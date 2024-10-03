import 'package:flutter/material.dart';
import '../theming/colors.dart';
import '../theming/fonts.dart';
import 'default_buttons.dart';

class DefaultDialog extends StatelessWidget {
  const DefaultDialog({
    super.key,
    required this.onSecondButtonTapped,
    required this.title,
    this.subTitle,
    this.widgetCard,
    this.secondButtonText = "Delete",
    this.secondButtonColor = AppColors.errorRed,
    required this.loading,
    this.onFirstButtonTapped,
  });

  final Widget? widgetCard;
  final String title;

  final String? subTitle;
  final String secondButtonText;
  final Color secondButtonColor;
  final bool loading;
  final void Function() onSecondButtonTapped;
  final void Function()? onFirstButtonTapped;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 420),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppFonts.inter24HeaderBlue600,
              textAlign: TextAlign.center,
            ),
            widgetCard != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      bottom: 30,
                    ),
                    child: widgetCard)
                : Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30, top: 16, left: 10, right: 10),
                    child: Text(subTitle!, style: AppFonts.inter16Grey400, textAlign: TextAlign.center,),
                  ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.primaryBlue),
                    width: 90,
                    borderRadius: 20,
                    textColor: AppColors.primaryBlue,
                    function: () {
                      onFirstButtonTapped ?? Navigator.pop(context);
                    },
                    text: "Cancel",
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: DefaultButton(
                    color: secondButtonColor,
                    width: 90,
                    loading: loading,
                    borderRadius: 20,
                    textColor: AppColors.white,
                    function: onSecondButtonTapped,
                    text: secondButtonText,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
