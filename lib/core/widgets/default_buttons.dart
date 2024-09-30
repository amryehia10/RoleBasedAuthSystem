import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/fonts.dart';

Widget defaultLoading({
  Color color = AppColors.yellow,
}) {
  return CircularProgressIndicator(
    color: color,
  );
}

class DefaultButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function() function;
  final double height;
  final double width;
  final double borderRadius;
  final double marginTop;
  final double marginBottom;
  final double marginRight;
  final double marginLeft;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool loading;
  final String text;
  final Border? border;
  final Widget? textWidget;
  const DefaultButton({
    super.key,
    required this.function,
    this.color = AppColors.primaryBlue,
    this.textColor = AppColors.white,
    this.height = 54,
    this.width = double.infinity,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.text = 'Login',
    this.border,
    this.borderRadius = 8,
    this.marginRight = 0,
    this.marginLeft = 0,
    this.loading = false,
    this.textWidget,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        right: marginRight,
        left: marginLeft,
      ),
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: InkWell(
        onTap: function,
        child: Center(
          child: loading
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: defaultLoading(
                      color: color == Colors.transparent
                          ? AppColors.primaryGreen
                          : Colors.white),
                )
              : textWidget ??
                  Text(
                    text,
                    style: AppFonts.inter18White500.copyWith(
                      color: textColor,
                      fontWeight: fontWeight,
                      fontSize: fontSize,
                    ),
                    textAlign: TextAlign.center,
                  ),
        ),
      ),
    );
  }
}
