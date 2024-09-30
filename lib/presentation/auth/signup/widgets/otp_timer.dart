import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';

class OTPTimer extends StatelessWidget {
  final String formattedTime;
  const OTPTimer({super.key, required this.formattedTime});

  @override
  Widget build(BuildContext context) {
    return  Container(
           padding: const EdgeInsets.only(top: 8, left: 40, right: 40, bottom: 6),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyBorder),
              borderRadius: BorderRadius.circular(20)
            ),
            child: RepaintBoundary(
              key: const Key("OTPTimer"),
              child: Text(
                formattedTime,
                style: AppFonts.inter14Grey400.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          );
  }
}