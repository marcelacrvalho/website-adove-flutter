import 'package:get/get.dart';

class Sizes {
  static double h1Mobile = 20;
  static double body1Mobile = 16.0;
  static double body2Mobile = 14.0;

  static double h1Site = 30.0;
  static double body1Site = 15.0;
  static double body2Site = 12.0;

  static bool isMobile() {
    return Get.mediaQuery.size.shortestSide < 600;
  }
}