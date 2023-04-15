// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of 'device.dart';

// Generated manually with https://fluttershapemaker.com/
class _FramePainter extends CustomPainter {
  const _FramePainter();

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(1);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width * 0.9944218, size.height),
        bottomRight: Radius.circular(size.width * 0.1321050),
        bottomLeft: Radius.circular(size.width * 0.1321050),
        topLeft: Radius.circular(size.width * 0.1321050),
        topRight: Radius.circular(size.width * 0.1321050),
      ),
      paint0Fill,
    );

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.01071678, size.height * 0.06375539);
    path_1.cubicTo(
      size.width * 0.01071678,
      size.height * 0.03069749,
      size.width * 0.06540505,
      size.height * 0.003898847,
      size.width * 0.1328664,
      size.height * 0.003898847,
    );
    path_1.lineTo(size.width * 0.8607492, size.height * 0.003898847);
    path_1.cubicTo(
      size.width * 0.9300081,
      size.height * 0.003898847,
      size.width * 0.9861564,
      size.height * 0.03141209,
      size.width * 0.9861564,
      size.height * 0.06535156,
    );
    path_1.lineTo(size.width * 0.9861564, size.height * 0.9358619);
    path_1.cubicTo(
      size.width * 0.9861564,
      size.height * 0.9693615,
      size.width * 0.9307410,
      size.height * 0.9965164,
      size.width * 0.8623779,
      size.height * 0.9965164,
    );
    path_1.lineTo(size.width * 0.1279805, size.height * 0.9965164);
    path_1.cubicTo(
      size.width * 0.06321735,
      size.height * 0.9965164,
      size.width * 0.01071678,
      size.height * 0.9707901,
      size.width * 0.01071678,
      size.height * 0.9390543,
    );
    path_1.lineTo(size.width * 0.01071678, size.height * 0.06375539);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint1Stroke.color = Colors.white.withOpacity(0.5);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.01804495, size.height * 0.06415323);
    path_2.cubicTo(
      size.width * 0.01804495,
      size.height * 0.03307913,
      size.width * 0.06945195,
      size.height * 0.007888508,
      size.width * 0.1328656,
      size.height * 0.007888508,
    );
    path_2.lineTo(size.width * 0.8607492, size.height * 0.007888508);
    path_2.cubicTo(
      size.width * 0.9250651,
      size.height * 0.007888508,
      size.width * 0.9771987,
      size.height * 0.03343647,
      size.width * 0.9771987,
      size.height * 0.06495172,
    );
    path_2.lineTo(size.width * 0.9771987, size.height * 0.9362610);
    path_2.cubicTo(
      size.width * 0.9771987,
      size.height * 0.9679968,
      size.width * 0.9246987,
      size.height * 0.9937231,
      size.width * 0.8599349,
      size.height * 0.9937231,
    );
    path_2.lineTo(size.width * 0.1304226, size.height * 0.9937231);
    path_2.cubicTo(
      size.width * 0.06835831,
      size.height * 0.9937231,
      size.width * 0.01804495,
      size.height * 0.9690702,
      size.width * 0.01804495,
      size.height * 0.9386552,
    );
    path_2.lineTo(size.width * 0.01804495, size.height * 0.06415323);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.01804495, size.height * 0.06415323);
    path_3.cubicTo(
      size.width * 0.01804495,
      size.height * 0.03307913,
      size.width * 0.06945195,
      size.height * 0.007888508,
      size.width * 0.1328656,
      size.height * 0.007888508,
    );
    path_3.lineTo(size.width * 0.8607492, size.height * 0.007888508);
    path_3.cubicTo(
      size.width * 0.9250651,
      size.height * 0.007888508,
      size.width * 0.9771987,
      size.height * 0.03343647,
      size.width * 0.9771987,
      size.height * 0.06495172,
    );
    path_3.lineTo(size.width * 0.9771987, size.height * 0.9362610);
    path_3.cubicTo(
      size.width * 0.9771987,
      size.height * 0.9679968,
      size.width * 0.9246987,
      size.height * 0.9937231,
      size.width * 0.8599349,
      size.height * 0.9937231,
    );
    path_3.lineTo(size.width * 0.1304226, size.height * 0.9937231);
    path_3.cubicTo(
      size.width * 0.06835831,
      size.height * 0.9937231,
      size.width * 0.01804495,
      size.height * 0.9690702,
      size.width * 0.01804495,
      size.height * 0.9386552,
    );
    path_3.lineTo(size.width * 0.01804495, size.height * 0.06415323);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.0008143322, [
      const Color(0xff000000).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff898686).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff898686).withOpacity(1),
      const Color(0xff1C1C1C).withOpacity(1),
      const Color(0xff000000).withOpacity(1)
    ], [
      0.00370279,
      0.0860873,
      0.142579,
      0.551797,
      0.597149,
      0.62222,
      0.635363,
      0.644459,
      0.86974,
      0.875025
    ]);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.01885928, size.height * 0.06495132);
    path_4.cubicTo(
      size.width * 0.01885928,
      size.height * 0.03387725,
      size.width * 0.07026629,
      size.height * 0.008686592,
      size.width * 0.1336800,
      size.height * 0.008686592,
    );
    path_4.lineTo(size.width * 0.8599349, size.height * 0.008686592);
    path_4.cubicTo(
      size.width * 0.9242508,
      size.height * 0.008686592,
      size.width * 0.9763844,
      size.height * 0.03423456,
      size.width * 0.9763844,
      size.height * 0.06574980,
    );
    path_4.lineTo(size.width * 0.9763844, size.height * 0.9354629);
    path_4.cubicTo(
      size.width * 0.9763844,
      size.height * 0.9671987,
      size.width * 0.9238844,
      size.height * 0.9929250,
      size.width * 0.8591205,
      size.height * 0.9929250,
    );
    path_4.lineTo(size.width * 0.1312370, size.height * 0.9929250);
    path_4.cubicTo(
      size.width * 0.06917272,
      size.height * 0.9929250,
      size.width * 0.01885928,
      size.height * 0.9682721,
      size.width * 0.01885928,
      size.height * 0.9378571,
    );
    path_4.lineTo(size.width * 0.01885928, size.height * 0.06495132);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.0008143322, [
      const Color(0xff4A4A4A).withOpacity(1),
      const Color(0xff404040).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff404040).withOpacity(1),
      const Color(0xff848484).withOpacity(1),
      const Color(0xff5E5E5E).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff535353).withOpacity(1),
      const Color(0xff585858).withOpacity(1),
      const Color(0xff000000).withOpacity(1),
      const Color(0xff575757).withOpacity(1)
    ], [
      0.000303672,
      0.0904875,
      0.111563,
      0.136566,
      0.404505,
      0.596482,
      0.607769,
      0.614698,
      0.626401,
      0.872212,
      0.886458,
      0.902914
    ]);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.03351482, size.height * 0.06455068);
    path_5.cubicTo(
      size.width * 0.03351482,
      size.height * 0.03722310,
      size.width * 0.07872394,
      size.height * 0.01506967,
      size.width * 0.1344919,
      size.height * 0.01506967,
    );
    path_5.lineTo(size.width * 0.8632003, size.height * 0.01506967);
    path_5.cubicTo(
      size.width * 0.9176140,
      size.height * 0.01506967,
      size.width * 0.9617345,
      size.height * 0.03668723,
      size.width * 0.9617345,
      size.height * 0.06335395,
    );
    path_5.lineTo(size.width * 0.9617345, size.height * 0.9370630);
    path_5.cubicTo(
      size.width * 0.9617345,
      size.height * 0.9646089,
      size.width * 0.9161564,
      size.height * 0.9869433,
      size.width * 0.8599430,
      size.height * 0.9869433,
    );
    path_5.lineTo(size.width * 0.1198339, size.height * 0.9869433);
    path_5.cubicTo(
      size.width * 0.07216116,
      size.height * 0.9869433,
      size.width * 0.03351482,
      size.height * 0.9680048,
      size.width * 0.03351482,
      size.height * 0.9446449,
    );
    path_5.lineTo(size.width * 0.03351482, size.height * 0.06455068);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_5, paint5Fill);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = Colors.black.withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.1107239, size.height * 0.05449721),
        width: size.width * 0.06159528,
        height: size.height * 0.03018109,
      ),
      paint6Fill,
    );

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff0A0A0A).withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.1104601, size.height * 0.05436752),
        width: size.width * 0.04641091,
        height: size.height * 0.02274086,
      ),
      paint7Fill,
    );

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.0008143322, [
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
        center: Offset(size.width * 0.1104601, size.height * 0.05436752),
        width: size.width * 0.04641091,
        height: size.height * 0.02274086,
      ),
      paint8Fill,
    );

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = Colors.black.withOpacity(1);
    // canvas.drawOval(
    //   Rect.fromCenter(
    //     center: Offset(size.width * 0.01, size.height * 0.01),
    //     width: size.width * 0.01919072,
    //     height: size.height * 0.009404469,
    //   ),
    //   paint9Fill,
    // );

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.shader =
        ui.Gradient.radial(const Offset(0, 0), size.width * 0.0008143322, [
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
        center: Offset(size.width * 0.009595358, size.height * 0.004702235),
        width: size.width * 0.01919072,
        height: size.height * 0.009404469,
      ),
      paint10Fill,
    );

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.shader = ui.Gradient.radial(
      const Offset(0, 0),
      size.width * 0.0008143322,
      [
        const Color(0xff000000).withOpacity(1),
        const Color(0xff767676).withOpacity(0)
      ],
      [0.0520833, 0.671875],
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.009595358, size.height * 0.004702235),
        width: size.width * 0.01919072,
        height: size.height * 0.009404469,
      ),
      paint11Fill,
    );

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xffBA7FD6).withOpacity(1);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(size.width * 0.1141246, size.height * 0.05376895),
        width: size.width * 0.004885993,
        height: size.height * 0.002393775,
      ),
      paint12Fill,
    );

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.05048135, size.height * 0.9311772);
    path_13.cubicTo(
      size.width * 0.04966726,
      size.height * 0.9465403,
      size.width * 0.05048135,
      size.height * 0.9862370,
      size.width * 0.1929707,
      size.height * 0.9766600,
    );
    path_13.cubicTo(
      size.width * 0.1143982,
      size.height * 0.9872306,
      size.width * 0.008467508,
      size.height * 0.9852793,
      size.width * 0.05048135,
      size.height * 0.9311772,
    );
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.9442997, size.height * 0.9271907);
    path_14.cubicTo(
      size.width * 0.9442997,
      size.height * 0.9790543,
      size.width * 0.8638925,
      size.height * 0.9758500,
      size.width * 0.8541205,
      size.height * 0.9765283,
    );
    path_14.cubicTo(
      size.width * 0.8455700,
      size.height * 0.9805188,
      size.width * 0.9841938,
      size.height * 0.9826457,
      size.width * 0.9442997,
      size.height * 0.9271907,
    );
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.05048111, size.height * 0.06383440);
    path_15.cubicTo(
      size.width * 0.05129536,
      size.height * 0.05166640,
      size.width * 0.06823119,
      size.height * 0.02690662,
      size.width * 0.1294609,
      size.height * 0.02515120,
    );
    path_15.cubicTo(
      size.width * 0.1009634,
      size.height * 0.02375483,
      size.width * 0.04527011,
      size.height * 0.02952382,
      size.width * 0.05048111,
      size.height * 0.06383440,
    );
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.8516775, size.height * 0.02513484);
    path_16.cubicTo(
      size.width * 0.8875081,
      size.height * 0.02513484,
      size.width * 0.9445033,
      size.height * 0.03171768,
      size.width * 0.9445033,
      size.height * 0.06782362,
    );
    path_16.cubicTo(
      size.width * 0.9506107,
      size.height * 0.04927215,
      size.width * 0.9405945,
      size.height * 0.01476181,
      size.width * 0.8516775,
      size.height * 0.02513484,
    );
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff020203).withOpacity(1);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.9942997, size.height * 0.2392865);
    path_17.lineTo(size.width * 0.9959283, size.height * 0.2392865);
    path_17.cubicTo(
      size.width * 0.9981759,
      size.height * 0.2392865,
      size.width,
      size.height * 0.2401800,
      size.width,
      size.height * 0.2412817,
    );
    path_17.lineTo(size.width, size.height * 0.3079078);
    path_17.cubicTo(
      size.width,
      size.height * 0.3090096,
      size.width * 0.9981759,
      size.height * 0.3099030,
      size.width * 0.9959283,
      size.height * 0.3099030,
    );
    path_17.lineTo(size.width * 0.9942997, size.height * 0.3099030);
    path_17.lineTo(size.width * 0.9942997, size.height * 0.2392865);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.9942997, size.height * 0.2392865);
    path_18.lineTo(size.width * 0.9959283, size.height * 0.2392865);
    path_18.cubicTo(
      size.width * 0.9981759,
      size.height * 0.2392865,
      size.width,
      size.height * 0.2401800,
      size.width,
      size.height * 0.2412817,
    );
    path_18.lineTo(size.width, size.height * 0.3079078);
    path_18.cubicTo(
      size.width,
      size.height * 0.3090096,
      size.width * 0.9981759,
      size.height * 0.3099030,
      size.width * 0.9959283,
      size.height * 0.3099030,
    );
    path_18.lineTo(size.width * 0.9942997, size.height * 0.3099030);
    path_18.lineTo(size.width * 0.9942997, size.height * 0.2392865);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.9971498, size.height * 0.2392865),
        Offset(size.width * 0.9971498, size.height * 0.3099030), [
      const Color(0xff353535).withOpacity(1),
      const Color(0xffAEAEAE).withOpacity(1),
      const Color(0xff49494A).withOpacity(1),
      const Color(0xff49494A).withOpacity(1),
      const Color(0xff787879).withOpacity(0.435484),
      const Color(0xff000000).withOpacity(0)
    ], [
      0,
      0.0416667,
      0.104167,
      0.677083,
      0.901042,
      1
    ]);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.9942997, size.height * 0.3781253);
    path_19.lineTo(size.width * 0.9959283, size.height * 0.3781253);
    path_19.cubicTo(
      size.width * 0.9981759,
      size.height * 0.3781253,
      size.width,
      size.height * 0.3790188,
      size.width,
      size.height * 0.3801205,
    );
    path_19.lineTo(size.width, size.height * 0.5125738);
    path_19.cubicTo(
      size.width,
      size.height * 0.5136752,
      size.width * 0.9981759,
      size.height * 0.5145690,
      size.width * 0.9959283,
      size.height * 0.5145690,
    );
    path_19.lineTo(size.width * 0.9942997, size.height * 0.5145690);
    path_19.lineTo(size.width * 0.9942997, size.height * 0.3781253);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = Colors.black.withOpacity(1);
    canvas.drawPath(path_19, paint19Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
