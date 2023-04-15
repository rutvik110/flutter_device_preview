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
    'samsung-galaxy-note20',
  ),
  name: 'Samsung Galaxy Note 20',
  pixelRatio: 2.625,
  safeAreas: const EdgeInsets.only(
    top: 48,
    bottom: 32,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 48,
    top: 24,
    right: 48,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  frameSize: const Size(834, 1788.93),
  screenSize: const Size(412, 916),
  borderRadius: 64,
);
