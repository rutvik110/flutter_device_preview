// ignore: unused_import
import 'dart:ui' as ui;

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
    'google_pixel_5',
  ),
  name: 'Google Pixel 5',
  pixelRatio: 2.625,
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
  frameSize: const Size(1228, 2506),
  screenSize: const Size(1097, 2384),
  borderRadius: 128,
);
