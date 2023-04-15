import 'package:device_frame/src/info/device_type.dart';
import 'package:device_frame/src/info/identifier.dart';
import 'package:device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.tablet,
    'ipad-air-4',
  ),
  name: 'iPad Air 4',
  pixelRatio: 3,
  frameSize: const Size(1811, 2509),
  screenSize: const Size(820, 1180),
  safeAreas: const EdgeInsets.only(
    top: 20,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    top: 20,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  borderRadius: 128,
);
