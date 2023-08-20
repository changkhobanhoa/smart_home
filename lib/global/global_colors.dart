import 'dart:math';

import 'package:flutter/material.dart';

class GlobalColors {
  static const Color bgButton = Color(0xff0D5CFF);
  static const Color bgButtonLight = Color(0xff397AFF);
  static const Color bgBlack = Color(0xff232323);
  static const Color bgGray = Color(0xff767676);
  static const Color bgGrayLight = Color(0xff989898);
  static const Color bgGrayLightT = Color(0xffBABABA);

  static const Color bgColor = Color(0xfff1f3f5);
  static const Color bgApp = Color(0xFF50C878);
  static const Gradient gradientApp = LinearGradient(colors: [
    Color(0xFF3CD27D),
    Color(0xFF6CC51D),
  ], transform: GradientRotation(pi / 4));
  static const Color bgAppt = Color.fromRGBO(14, 135, 64, 1);
  static const Color bgApptp = Color(0xFF6CC51D);
  static const Color bgErr = Color.fromRGBO(239, 18, 47, 1);
  static const Color bgBlue = Color.fromRGBO(28, 159, 226, 1);
}
