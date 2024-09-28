import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/helpers/extensions.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle inter14Red400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 14.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.errorRed,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.errorRed,
        );

  static TextStyle inter14ToggleBlack400 =
      navigatorKey.currentContext != null &&
              AppConstants.screenWidth(navigatorKey.currentContext!) < 600
          ? TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.0.sp(navigatorKey.currentContext!),
              fontWeight: FontWeight.w400,
              color: AppColors.toggleBlack,
            )
          : const TextStyle(
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.toggleBlack,
            );

  static TextStyle inter15Black400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 15.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        );
        
  static TextStyle inter15buttonGreyBorder400 =
      navigatorKey.currentContext != null &&
              AppConstants.screenWidth(navigatorKey.currentContext!) < 600
          ? TextStyle(
              fontFamily: 'Inter',
              fontSize: 15.0.sp(navigatorKey.currentContext!),
              fontWeight: FontWeight.w400,
              color: AppColors.buttonGreyBorder,
            )
          : const TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.buttonGreyBorder,
            );

  static TextStyle inter15HintGrey400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 15.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.hintGrey,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.hintGrey,
        );

  static TextStyle inter16Black400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 16.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        );

  static TextStyle inter18Black500 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 18.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        );

  static TextStyle inter18White500 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 18.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        );

  static TextStyle inter24HintBlack400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 24.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.hintBlack,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: AppColors.hintBlack,
        );
}
