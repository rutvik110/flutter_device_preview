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
    'oneplus-8-pro',
  ),
  name: 'OnePlus 8 Pro',
  pixelRatio: 4,
  safeAreas: const EdgeInsets.only(
    top: 40,
    bottom: 20,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 40,
    top: 24,
    right: 40,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  frameSize: const Size(852, 1865),
  screenSize: const Size(360, 800),
  borderRadius: 64,
);
