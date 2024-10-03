import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/helpers/extensions.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle inter14Grey400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 14.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.grey400,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.grey400,
        );

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

    static TextStyle inter14LightBlack400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 14.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.lightBlack,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.lightBlack,
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
  
    static TextStyle inter15Gold400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 15.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.gold,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.gold,
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

    static TextStyle inter16LightBlack600 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 16.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w600,
          color: AppColors.lightBlack,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.lightBlack,
        );

  static TextStyle inter16PrimaryBlue400 =
      navigatorKey.currentContext != null &&
              AppConstants.screenWidth(navigatorKey.currentContext!) < 600
          ? TextStyle(
              fontFamily: 'Inter',
              fontSize: 16.0.sp(navigatorKey.currentContext!),
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBlue,
            )
          : const TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBlue,
            );
  

  static TextStyle inter16Grey400 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 16.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w400,
          color: AppColors.grey400,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.grey400,
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

    static TextStyle inter24HeaderBlue600 = navigatorKey.currentContext != null &&
          AppConstants.screenWidth(navigatorKey.currentContext!) < 600
      ? TextStyle(
          fontFamily: 'Inter',
          fontSize: 24.0.sp(navigatorKey.currentContext!),
          fontWeight: FontWeight.w600,
          color: AppColors.primaryBlue,
        )
      : const TextStyle(
          fontFamily: 'Inter',
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryBlue,
        );

}
