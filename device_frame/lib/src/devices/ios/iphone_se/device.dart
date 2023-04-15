import 'package:device_frame/src/info/device_type.dart';
import 'package:device_frame/src/info/identifier.dart';
import 'package:device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.phone,
    'iphone-se',
  ),
  name: 'iPhone SE',
  pixelRatio: 2,
  frameSize: const Size(891, 1790),
  screenSize: const Size(375, 667),
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
