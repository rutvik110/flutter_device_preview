import 'package:device_frame/src/info/device_type.dart';
import 'package:device_frame/src/info/identifier.dart';
import 'package:device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.android,
    DeviceType.phone,
    'samsung-galaxy-note20-ultra',
  ),
  name: 'Samsung Galaxy Note 20 Ultra',
  pixelRatio: 3.5,
  safeAreas: const EdgeInsets.only(
    top: 36,
    bottom: 24,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 36,
    top: 24,
    right: 36,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  frameSize: const Size(801, 1713.86),
  screenSize: const Size(412, 883),
  borderRadius: 24,
);
