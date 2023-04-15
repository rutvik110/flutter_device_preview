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
    'sony-xperia-1-ii',
  ),
  name: 'Sony Xperia 1 II',
  pixelRatio: 4,
  safeAreas: const EdgeInsets.only(
    top: 24,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    top: 24,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
  frameSize: const Size(760, 1757.63),
  screenSize: const Size(1644 / 4, 3840 / 4),
  borderRadius: 64,
);
