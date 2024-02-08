import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class Sze {
  static late double width;
  static late double height;
  static late double w;
  static late double h;
  static late Orientation orient;
  static late bool portrait;
  static late bool desktop;
  static late bool mobile;
  static late bool tablet;

  static void init(BuildContext context) {
    width = getWidth(context);
    height = getHeight(context);
    w = width / 100;
    h = height / 100;
    orient = getOrientation(context);
    desktop = isDesktop(context);
    mobile = isMobile(context);
    tablet = isTablet(context);
    portrait = getOrientation(context) == Orientation.portrait;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

// enum Orientation { portrait, landscape }
  static Orientation getOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

// This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  static void devInfo(BuildContext context) {
    'Device Width ${Sze.getWidth(context)}'.prt;
    'Device Height ${Sze.getHeight(context)}'.prt;
    'Device Orientation ${Sze.getOrientation(context).name}'.prt;
    if (isDesktop(context)) {
      'Device Type is Desktop'.prt;
    } else if (isTablet(context)) {
      'Device Type is Tablet'.prt;
    } else if (isMobile(context)) {
      'Device Type is Mobile'.prt;
    }
  }
}
