import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helpers/constants.dart';
import '../helpers/enums.dart';
import '../theming/colors.dart';
import '../theming/fonts.dart';
import 'custom_text_fields.dart';

class AuthTextFieldWithHeader extends StatefulWidget {
  const AuthTextFieldWithHeader(
      {super.key,
      required this.header,
      required this.hintText,
      required this.textEditingController,
      required this.validation,
      required this.onChange,
      required this.onSubmit,
      this.validationText = '',
      this.isPassword = false,
      this.isWithValidation = false,
      this.textInputType,
      this.textInputAction,
      this.prefixIcon,
      this.onTap,
      this.width,
      this.inputFormatters,
      this.isEnabled = true,
      this.isMultiLine = false,
      this.horizontalPadding = 18,
      this.onTapOutside,
      this.suffixIcon,
      this.contentPadding,
      this.isRequiredFiled = false,
      this.widgetPadding,
      this.hintStyle});

  final bool isEnabled;
  final String header;
  final String hintText;
  final String validationText;
  final bool isPassword;
  final bool isMultiLine;
  final bool isRequiredFiled;
  final bool isWithValidation;
  final TextEditingController textEditingController;
  final TextFieldValidation validation;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final void Function(String) onChange;
  final void Function(String) onSubmit;
  final void Function()? onTap;
  final void Function()? onTapOutside;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final double horizontalPadding;
  final double? width;
  final EdgeInsetsDirectional? contentPadding;
  final EdgeInsetsDirectional? widgetPadding;
  final TextStyle? hintStyle;
  @override
  State<AuthTextFieldWithHeader> createState() =>
      _AuthTextFieldWithHeaderState();
}

class _AuthTextFieldWithHeaderState extends State<AuthTextFieldWithHeader> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? AppConstants.screenWidth(context),
      child: Padding(
        padding: widget.widgetPadding ??
            EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isRequiredFiled
                ? Text.rich(
                    TextSpan(
                        text: widget.header,
                        style: AppFonts.inter16LightBlack600,
                        children: [
                          TextSpan(
                            text: "*",
                            style: AppFonts.inter16LightBlack600,
                          ),
                        ]),
                  )
                : Text(
                    widget.header,
                    style: AppFonts.inter16LightBlack600,
                  ),
            const SizedBox(
              height: 8,
            ),
            if (widget.isPassword)
              PasswordTextField(
                onTextFieldTap: widget.onTap,
                label: '',
                isObscureText: _isObscure,
                textInputAction: widget.textInputAction ?? TextInputAction.next,
                controller: widget.textEditingController,
                fieldValidation: widget.validation,
                onIconPress: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                suffixIcon:
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                onSubmit: widget.onSubmit,
                onChange: widget.onChange,
                validateText: widget.validationText,
                validatePadding: 4,
                enabled: widget.isEnabled,
              )
            else
              CustomTextField(
                onTapOutside: widget.onTapOutside != null
                    ? (pointer) {
                        widget.onTapOutside!();
                      }
                    : null,
                height: widget.isMultiLine ? 107 : null,
                onTap: widget.onTap,
                radius: 20,
                icon: widget.suffixIcon,
                maxLines: widget.isMultiLine ? 7 : 1,
                enabled: widget.isEnabled,
                inputFormatters: widget.inputFormatters,
                prefixIcon: widget.prefixIcon,
                isWithValidationMsg: widget.isWithValidation,
                validationState: widget.validation,
                textEditingController: widget.textEditingController,
                onSubmit: widget.onSubmit,
                contentPadding: widget.contentPadding,
                onChange: widget.onChange,
                textInputType: widget.textInputType ?? TextInputType.text,
                textInputAction: widget.textInputAction ?? TextInputAction.next,
                label: "",
                validateText: widget.validationText,
                validatePadding: 4,
                hint: widget.hintText,
                hintStyle: widget.isEnabled
                    ? AppFonts.inter15buttonGreyBorder400
                    : AppFonts.inter15buttonGreyBorder400
                        .copyWith(color: AppColors.grey500),
              ),
          ],
        ),
      ),
    );
  }
}
