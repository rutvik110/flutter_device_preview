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
    'samsung-galaxy-s20',
  ),
  name: 'Samsung Galaxy S20',
  pixelRatio: 4,
  safeAreas: const EdgeInsets.only(
    top: 32,
    bottom: 32,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 32,
    top: 24,
    right: 32,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  frameSize: const Size(856.54, 1899),
  screenSize: const Size(360, 800),
  borderRadius: 96,
);
