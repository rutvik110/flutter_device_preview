import 'package:device_frame/src/info/device_type.dart';
import 'package:device_frame/src/info/identifier.dart';
import 'package:device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

final info = DeviceInfo(
  borderRadius: 128,
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.tablet,
    'ipad-pro-12inches-gen4',
  ),
  name: 'iPad Pro (12" gen 4)',
  pixelRatio: 2,
  frameSize: const Size(1849, 2424),
  screenSize: const Size(1024, 1366),
  safeAreas: const EdgeInsets.only(
    top: 24,
    bottom: 20,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    top: 24,
    bottom: 20,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
);
