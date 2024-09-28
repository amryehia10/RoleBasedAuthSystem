import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../theming/colors.dart';

Widget defaultSnackBar({
  required BuildContext context,
  required message,
  required backgroundColor,
  required borderColor,
  title,
  void Function()? onTap,
}) {
  return Flushbar(
    message: message,
    messageColor: AppColors.white,
    backgroundColor: backgroundColor,
    borderColor: borderColor,
    flushbarPosition: FlushbarPosition.TOP,
    title: title,
    titleColor: AppColors.white,
    shouldIconPulse: false,
    borderRadius: const BorderRadius.all(
      Radius.circular(7),
    ),
    margin: const EdgeInsets.only(
      top: 8,
      left: 20,
      right: 20,
    ),
    duration: const Duration(seconds: 2),
  )..show(context);
}

Widget defaultErrorSnackBar({
  required BuildContext context,
  required message,
  title,
}) {
  return defaultSnackBar(
    context: context,
    message: message,
    title: title,
    onTap: () {},
    borderColor: AppColors.buttonGreyBorder.withOpacity(0.4),
    backgroundColor: AppColors.errorRed,
  );
}

Widget defaultSuccessSnackBar({
  required BuildContext context,
  required message,
  title,
  void Function()? onTap,
}) {
  return defaultSnackBar(
    context: context,
    message: message,
    title: title,
    onTap: onTap,
    borderColor: AppColors.buttonGreyBorder.withOpacity(0.4),
    backgroundColor: AppColors.primaryGreen,
  );
}
