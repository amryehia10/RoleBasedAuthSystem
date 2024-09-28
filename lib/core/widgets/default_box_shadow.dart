import 'package:flutter/painting.dart';

import '../theming/colors.dart';

List<BoxShadow> defaultBoxShadow({
  double spreadRadius = -2.0,
  double blurRadius = 2.0,
  Offset offset = const Offset(1, 1),
  Color? shadowColor,
  Color? bgColor,
}) =>
    [
      BoxShadow(
        color: shadowColor ?? AppColors.softBlack.withOpacity(0.16),
      ),
      BoxShadow(
        color: bgColor ?? AppColors.white,
        spreadRadius: spreadRadius,
        blurRadius: blurRadius,
        offset: offset,
      ),
    ];
