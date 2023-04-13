// ignore: unnecessary_import
import 'dart:ui';

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
    'iphone14Pro',
  ),
  name: 'iPhone 14 Pro',
  pixelRatio: 3,
  frameSize: const Size(873, 1770),
  screenSize: const Size(428, 926),
  safeAreas: const EdgeInsets.only(
    top: 47,
    bottom: 34,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 47,
    right: 47,
    bottom: 21,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
);
