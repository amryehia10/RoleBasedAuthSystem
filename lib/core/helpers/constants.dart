import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppConstants {
  static Size screenSize(BuildContext context) => MediaQuery.sizeOf(context);
  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
  static double heightBasedOnFigmaDevice(BuildContext context, double height) {
    return MediaQuery.sizeOf(context).height * (height / 844) >= height
        ? MediaQuery.sizeOf(context).height * (height / 844)
        : height;
  }

  static double widthBasedOnFigmaDevice(BuildContext context, double width) =>
      MediaQuery.sizeOf(context).width * (width / 390) >= width
          ? MediaQuery.sizeOf(context).width * (width / 390)
          : width;
}
