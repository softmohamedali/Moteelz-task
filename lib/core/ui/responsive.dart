import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResponsiveSize {
  static bool get isTablet => Get.width > 600;

  static double cardWidth(BuildContext context) {
    return isTablet ? Get.width * 0.25 : Get.width * 0.33;
  }

  static double cardHeight(BuildContext context, {double percentage=0.1}) {
    return isTablet ? 120.0 : Get.height * percentage;
  }
}