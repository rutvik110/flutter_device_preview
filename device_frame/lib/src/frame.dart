import 'dart:ui' as ui;

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

/// Simulate a physical device and embedding a virtual
/// [screen] into it.
///
/// The [screen] media query's `padding`, `devicePixelRatio`, `size` are also
/// simulated from the device's info by overriding the default values.
///
/// The [screen]'s [Theme] will also have the `platform` of the simulated device.
///
/// Using the [DeviceFrame.identifier] constructor will load an
/// svg file from assets first to get device frame visuals, but also
/// device info.
///
/// To preload the info, the [DeviceFrame.info] constructor can be
/// used instead.
///
/// See also:
///
/// * [Devices] to get all available devices.
///
class DeviceFrame extends StatelessWidget {
  /// Displays the given [screen] into the given [info]
  /// simulated device.
  ///
  /// The orientation of the device can be updated if the frame supports
  /// it (else it is ignored).
  ///
  /// If [isFrameVisible] is `true`, only the [screen] is displayed, but clipped with
  /// the device screen shape.
  const DeviceFrame({
    required this.device,
    required this.screen,
    this.boxShadow,
    Key? key,
    this.orientation = Orientation.portrait,
    this.isFrameVisible = true,
  }) : super(key: key);

  /// The screen that should be inserted into the simulated
  /// device.
  ///
  /// It is cropped with the device screen shape and its size
  /// is the [info]'s screensize.
  final Widget screen;

  /// All information related to the device.
  final DeviceInfo device;

  /// The current frame simulated orientation.
  ///
  /// It will also affect the media query.
  final Orientation orientation;

  /// Indicates whether the device frame is visible, else
  /// only the screen is displayed.
  final bool isFrameVisible;

  /// boshadow
  final BoxShadow? boxShadow;

  /// Creates a [MediaQuery] from the given device [info], and for the current device [orientation].
  ///
  /// All properties that are not simulated are inherited from the current [context]'s inherited [MediaQuery].
  static MediaQueryData mediaQuery({
    required BuildContext context,
    required DeviceInfo? info,
    required Orientation orientation,
  }) {
    final mediaQuery = MediaQuery.of(context);
    final isRotated = info?.isLandscape(orientation) ?? false;
    final viewPadding = isRotated
        ? (info?.rotatedSafeAreas ?? info?.safeAreas)
        : (info?.safeAreas ?? mediaQuery.padding);

    final screenSize = info != null ? info.screenSize : mediaQuery.size;
    final width = isRotated ? screenSize.height : screenSize.width;
    final height = isRotated ? screenSize.width : screenSize.height;

    return mediaQuery.copyWith(
      size: Size(width, height),
      padding: viewPadding,
      viewInsets: EdgeInsets.zero,
      viewPadding: viewPadding,
      devicePixelRatio: info?.pixelRatio ?? mediaQuery.devicePixelRatio,
    );
  }

  ThemeData _theme(BuildContext context) {
    final density = [
      DeviceType.desktop,
      DeviceType.laptop,
    ].contains(device.identifier.type)
        ? VisualDensity.compact
        : null;
    return Theme.of(context).copyWith(
      platform: device.identifier.platform,
      visualDensity: density,
    );
  }

  Widget _screen(BuildContext context, DeviceInfo? info) {
    final mediaQuery = MediaQuery.of(context);
    final isRotated = info?.isLandscape(orientation) ?? false;
    final screenSize = info != null ? info.screenSize : mediaQuery.size;
    final width = isRotated ? screenSize.height : screenSize.width;
    final height = isRotated ? screenSize.width : screenSize.height;

    return RotatedBox(
      quarterTurns: isRotated ? 1 : 0,
      child: SizedBox(
        width: width,
        height: height,
        child: MediaQuery(
          data: DeviceFrame.mediaQuery(
            info: info,
            orientation: orientation,
            context: context,
          ),
          child: Theme(
            data: _theme(context),
            child: screen,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final frameSize = device.frameSize;
    final bounds = device.screenPath.getBounds();
    final difference = Size(
      frameSize.width - bounds.size.width,
      frameSize.height - bounds.size.height,
    );
    bool isiPhone14 =
        device.identifier.name == Devices.ios.iPhone14Pro.identifier.name;
    bool isGooglePixel5 =
        device.identifier.name == Devices.android.googlePixel5.identifier.name;
    bool isGooglePixel6Pro = device.identifier.name ==
        Devices.android.googlePixel6Pro.identifier.name;

    final stack = SizedBox(
      width: isFrameVisible ? frameSize.width : bounds.width,
      height: isFrameVisible ? frameSize.height : bounds.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(device.borderRadius),
          boxShadow: boxShadow == null
              ? null
              : [
                  boxShadow!,
                ],
        ),
        child: Stack(
          children: [
            if (isFrameVisible)
              Positioned.fill(
                key: const Key('frame'),
                child: CustomPaint(
                  key: ValueKey(device.identifier),
                  painter: device.framePainter,
                ),
              ),
            Positioned(
              key: const Key('Screen'),
              left: isFrameVisible
                  ? isiPhone14 || isGooglePixel5 || isGooglePixel6Pro
                      ? difference.width / 2
                      : bounds.left
                  : 0,
              top: isFrameVisible
                  ? isiPhone14 || isGooglePixel5 || isGooglePixel6Pro
                      ? difference.width / 2
                      : bounds.top
                  : 0,
              width: bounds.width,
              height: bounds.height,
              child: ClipPath(
                clipper: _ScreenClipper(
                  device.screenPath,
                ),
                child: FittedBox(
                  child: _screen(context, device),
                ),
              ),
            ),
            if (isiPhone14)
              Positioned.fill(
                top: 60,
                child: Align(
                  alignment: Alignment.topCenter,
                  key: const Key('FrameOverlay'),
                  child: CustomPaint(
                    size: const Size(247, 71),
                    painter: FrameOverlayCustomPainter(),
                  ),
                ),
              ),
            if (isGooglePixel5)
              Positioned(
                left: 98,
                top: 99,
                child: Align(
                  alignment: Alignment.topCenter,
                  key: const Key('FrameOverlay'),
                  child: CustomPaint(
                    size: const Size(76, 76),
                    painter: GooglePixelCameraPainter(),
                  ),
                ),
              ),
            if (isGooglePixel6Pro)
              Positioned.fill(
                top: 70,
                child: Align(
                  alignment: Alignment.topCenter,
                  key: const Key('FrameOverlay'),
                  child: CustomPaint(
                    size: const Size(76, 76),
                    painter: GooglePixelCameraPainter(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );

    final isRotated = device.isLandscape(orientation);

    return FittedBox(
      child: RotatedBox(
        quarterTurns: isRotated ? -1 : 0,
        child: stack,
      ),
    );
  }
}

class _ScreenClipper extends CustomClipper<Path> {
  const _ScreenClipper(this.path);

  final Path? path;

  @override
  Path getClip(Size size) {
    final path = this.path ?? (Path()..addRect(Offset.zero & size));
    final bounds = path.getBounds();
    final transform = Matrix4.translationValues(-bounds.left, -bounds.top, 0);

    return path.transform(transform.storage);
  }

  @override
  bool shouldReclip(_ScreenClipper oldClipper) {
    return oldClipper.path != path;
  }
}

class FrameOverlayCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8562753, 0);
    path_0.lineTo(size.width * 0.1437247, 0);
    path_0.cubicTo(
      size.width * 0.06434777,
      0,
      0,
      size.height * 0.2238577,
      0,
      size.height * 0.5000000,
    );
    path_0.cubicTo(
      0,
      size.height * 0.7761423,
      size.width * 0.06434777,
      size.height,
      size.width * 0.1437247,
      size.height,
    );
    path_0.lineTo(size.width * 0.4959514, size.height);
    path_0.lineTo(size.width * 0.8562753, size.height);
    path_0.cubicTo(
      size.width * 0.9356518,
      size.height,
      size.width,
      size.height * 0.7761423,
      size.width,
      size.height * 0.5000000,
    );
    path_0.cubicTo(
      size.width,
      size.height * 0.2238577,
      size.width * 0.9356518,
      0,
      size.width * 0.8562753,
      0,
    );
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff121515).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8601093, size.height * 0.7025507);
    path_1.cubicTo(
      size.width * 0.8924130,
      size.height * 0.7025507,
      size.width * 0.9185992,
      size.height * 0.6114915,
      size.width * 0.9185992,
      size.height * 0.4991634,
    );
    path_1.cubicTo(
      size.width * 0.9185992,
      size.height * 0.3868352,
      size.width * 0.8924130,
      size.height * 0.2957746,
      size.width * 0.8601093,
      size.height * 0.2957746,
    );
    path_1.cubicTo(
      size.width * 0.8278057,
      size.height * 0.2957746,
      size.width * 0.8016194,
      size.height * 0.3868352,
      size.width * 0.8016194,
      size.height * 0.4991634,
    );
    path_1.cubicTo(
      size.width * 0.8016194,
      size.height * 0.6114915,
      size.width * 0.8278057,
      size.height * 0.7025507,
      size.width * 0.8601093,
      size.height * 0.7025507,
    );
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff262C2D).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8601093, size.height * 0.6262775);
    path_2.cubicTo(
      size.width * 0.8802996,
      size.height * 0.6262775,
      size.width * 0.8966640,
      size.height * 0.5693648,
      size.width * 0.8966640,
      size.height * 0.4991606,
    );
    path_2.cubicTo(
      size.width * 0.8966640,
      size.height * 0.4289549,
      size.width * 0.8802996,
      size.height * 0.3720423,
      size.width * 0.8601093,
      size.height * 0.3720423,
    );
    path_2.cubicTo(
      size.width * 0.8399190,
      size.height * 0.3720423,
      size.width * 0.8235547,
      size.height * 0.4289549,
      size.width * 0.8235547,
      size.height * 0.4991606,
    );
    path_2.cubicTo(
      size.width * 0.8235547,
      size.height * 0.5693648,
      size.width * 0.8399190,
      size.height * 0.6262775,
      size.width * 0.8601093,
      size.height * 0.6262775,
    );
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff121515).withOpacity(1);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8601053, size.height * 0.4737394);
    path_3.cubicTo(
      size.width * 0.8641457,
      size.height * 0.4737394,
      size.width * 0.8674170,
      size.height * 0.4623577,
      size.width * 0.8674170,
      size.height * 0.4483169,
    );
    path_3.cubicTo(
      size.width * 0.8674170,
      size.height * 0.4342746,
      size.width * 0.8641457,
      size.height * 0.4228930,
      size.width * 0.8601053,
      size.height * 0.4228930,
    );
    path_3.cubicTo(
      size.width * 0.8560688,
      size.height * 0.4228930,
      size.width * 0.8527976,
      size.height * 0.4342746,
      size.width * 0.8527976,
      size.height * 0.4483169,
    );
    path_3.cubicTo(
      size.width * 0.8527976,
      size.height * 0.4623577,
      size.width * 0.8560688,
      size.height * 0.4737394,
      size.width * 0.8601053,
      size.height * 0.4737394,
    );
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff636F73).withOpacity(1);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class GooglePixelCameraPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.4995908, size.height * 0.5009065),
        width: size.width * 0.9952500,
        height: size.height * 0.9822571,
      ),
      paint0Fill,
    );

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff0A0A0A).withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.4953250, size.height * 0.4966922),
        width: size.width * 0.7499026,
        height: size.height * 0.7401117,
      ),
      paint1Fill,
    );

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.01315789, [
      const Color(0xff000000).withOpacity(0),
      const Color(0xff5B5B5B).withOpacity(0.21),
      const Color(0xff000000).withOpacity(0)
    ], [
      0.552083,
      0.666667,
      0.708333
    ]);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.4953250, size.height * 0.4966922),
        width: size.width * 0.7499026,
        height: size.height * 0.7401117,
      ),
      paint2Fill,
    );

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Colors.black.withOpacity(1);
    // canvas.drawOval(
    //   Rect.fromCenter(
    //     center: Offset(size.width * 0.1550408, size.height * 0.1530364),
    //     width: size.width * 0.3100816,
    //     height: size.height * 0.3060727,
    //   ),
    //   paint3Fill,
    // );

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.01315789, [
      const Color(0xff000000).withOpacity(0.718268),
      const Color(0xff6777CA).withOpacity(1),
      const Color(0xff6C86CA).withOpacity(1),
      const Color(0xff5583C7).withOpacity(1),
      const Color(0xff000000).withOpacity(0.718268),
      const Color(0xff5351BA).withOpacity(0)
    ], [
      0.109898,
      0.266542,
      0.473888,
      0.665391,
      0.865938,
      1
    ]);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.1550408, size.height * 0.1530364),
        width: size.width * 0.3100816,
        height: size.height * 0.3060727,
      ),
      paint4Fill,
    );

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.shader = ui.Gradient.radial(
        const Offset(0, 0), size.width * 0.01315789, [
      const Color(0xff000000).withOpacity(1),
      const Color(0xff767676).withOpacity(0)
    ], [
      0.0520833,
      0.671875
    ]);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.1550408, size.height * 0.1530364),
        width: size.width * 0.3100816,
        height: size.height * 0.3060727,
      ),
      paint5Fill,
    );

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffBA7FD6).withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.5545329, size.height * 0.4772143),
        width: size.width * 0.07894737,
        height: size.height * 0.07790649,
      ),
      paint6Fill,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
