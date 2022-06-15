import 'dart:math';

import 'package:get/get.dart';

class Sizes {
  static double h1Mobile = 16;
  static double body1Mobile = 14.0;
  static double body2Mobile = 12.0;

  static double h1Site = 16.0;
  static double body1Site = 14.0;
  static double body2Site = 12.0;

  static bool isMobile() {
    return GetPlatform.isMobile;
  }
}