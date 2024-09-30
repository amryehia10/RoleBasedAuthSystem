import 'package:flutter/material.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import '../../../../core/theming/fonts.dart';

class AuthRichText extends StatelessWidget {
  const AuthRichText({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onTap,
    required this.buttonStyle,
    this.alignmentDirectional = AlignmentDirectional.centerStart,
  });

  final String text;
  final String buttonText;
  final void Function() onTap;
  final TextStyle buttonStyle;
  final AlignmentDirectional  alignmentDirectional;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: AppConstants.screenWidth(context),
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Align(
          alignment: alignmentDirectional,
          child: Text.rich(
            TextSpan(
              text: text,
              style: AppFonts.inter16Grey400,
              children: [
                TextSpan(
                  text: " $buttonText",
                  style: buttonStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
