import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';
import '../theming/colors.dart';
import 'default_box_shadow.dart';

class EmailTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final String hint;
  final String label;
  final String validateText;
  final bool enabled;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final Function(String value)? onSubmit;
  final Function(String value)? onChange;
  final Function()? onTap;
  final TextCapitalization textCapitalization;
  final TextFieldValidation fieldValidation;
  final Iterable<String>? autofill;
  final Function(PointerDownEvent)? onTapOutside;
  final InputBorder? border;

  const EmailTextField({
    super.key,
    this.focusNode,
    this.marginTop = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.autofill,
    this.border,
    this.hint = "example@email.com",
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    required this.controller,
    this.validateText = 'This email is invalid',
    required this.onSubmit,
    this.textInputType = TextInputType.emailAddress,
    this.onChange,
    this.onTap,
    this.textCapitalization = TextCapitalization.none,
    required this.fieldValidation,
    this.label = "Email",
    this.onTapOutside,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsetsDirectional.only(
              end: marginRight,
              start: marginLeft,
              top: marginTop,
              bottom: marginBottom,
            ),
            padding: const EdgeInsetsDirectional.only(top: 4),
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              boxShadow: defaultBoxShadow(),
            ),
            child: TextFormField(
              expands: true,
              maxLines: null,
              minLines: null,
              focusNode: focusNode,
              onChanged: onChange,
              onTapOutside: (pointerDownEvent) {
                onTapOutside;
                FocusManager.instance.primaryFocus?.unfocus();
              },
              autocorrect: false,
              textCapitalization: textCapitalization,
              textInputAction: textInputAction,
              onFieldSubmitted: onSubmit,
              autofillHints: autofill,
              style: AppFonts.inter16Black400,
              controller: enabled ? controller : TextEditingController(),
              keyboardType: textInputType,
              decoration: InputDecoration(
                labelText: label,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: AppFonts.inter18White500,
                hintText: hint,
                hintStyle: AppFonts.inter15HintGrey400,
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 16,
                  end: 12,
                ),
                border: border ??
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: AppColors.greyBorder,
                      ),
                    ),
                focusedBorder: border ??
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: AppColors.greyBorder,
                      ),
                    ),
                fillColor: AppColors.white,
                enabled: enabled,
                filled: true,
                enabledBorder: (fieldValidation == TextFieldValidation.notValid)
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.errorRed,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      )
                    : border ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: AppColors.greyBorder,
                          ),
                        ),
              ),
            ),
          ),
          if (fieldValidation == TextFieldValidation.notValid)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                end: 20,
                top: 8,
              ),
              child: Text(
                validateText,
                style: AppFonts.inter18White500,
              ),
            ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextFieldValidation fieldValidation;
  final bool enabled;
  final bool signup;
  final double marginRight;
  final double marginLeft;
  final double marginTop;
  final double marginBottom;
  final String? validateText;
  final String? hintText;
  final Function() onIconPress;
  final Function()? onTextFieldTap;
  final FocusNode? focusNode;
  final String label;
  final double validatePadding;
  final double hintTextSize;
  final bool isObscureText;
  final Function(String value) onSubmit;
  final Function(String value) onChange;
  final Iterable<String>? autofill;
  final IconData suffixIcon;
  final Color suffixIconColor;
  final Function(PointerDownEvent)? onTapOutside;
  final TextInputAction textInputAction;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.fieldValidation,
    required this.onIconPress,
    required this.suffixIcon,
    this.suffixIconColor = AppColors.grey,
    this.isObscureText = true,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.validateText,
    this.validatePadding = 20,
    this.hintTextSize = 16,
    this.signup = false,
    this.onTextFieldTap,
    this.focusNode,
    this.hintText,
    this.autofill,
    this.label = "Password",
    this.onTapOutside,
    required this.onSubmit,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTextFieldTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsetsDirectional.only(
              start: marginRight,
              end: marginLeft,
              top: marginTop,
              bottom: marginBottom,
            ),
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              boxShadow: defaultBoxShadow(),
            ),
            child: TextFormField(
              focusNode: focusNode,
              onChanged: onChange,
              onTapOutside: (pointerDownEvent) {
                onTapOutside;
                FocusManager.instance.primaryFocus?.unfocus();
              },
              textInputAction: TextInputAction.done,
              obscuringCharacter: '●',
              onFieldSubmitted: onSubmit,
              obscureText: isObscureText,
              autofillHints: autofill,
              style: AppFonts.inter16Black400,
              controller: enabled ? controller : TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: AppFonts.inter18White500,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 4),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      suffixIcon,
                      color: AppColors.darkGrey,
                    ),
                    onPressed: onIconPress,
                    color: AppColors.grey,
                  ),
                ),
                hintText: hintText ?? "Password",
                hintStyle: AppFonts.inter15HintGrey400,
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 16,
                  // end: 16,
                  top: 14,
                  bottom: 12,
                ),
                border: (fieldValidation == TextFieldValidation.notValid)
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.errorRed,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: AppColors.greyBorder,
                        ),
                      ),
                focusedBorder: (fieldValidation == TextFieldValidation.notValid)
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.errorRed,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: AppColors.greyBorder,
                        ),
                      ),
                fillColor: AppColors.white,
                enabled: enabled,
                filled: false,
                enabledBorder: (fieldValidation == TextFieldValidation.notValid)
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.errorRed,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: AppColors.greyBorder,
                        ),
                      ),
              ),
            ),
          ),
          if (fieldValidation == TextFieldValidation.notValid &&
              validateText != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: validatePadding,
                  top: 8,
                ),
                child: Text(
                  validateText ?? '',
                  style: AppFonts.inter14Red400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final double validatePadding;
  final double paddingTop;
  final String hint;
  final String label;
  final TextFieldValidation validationState;
  final String validateText;
  final bool enabled;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController textEditingController;
  final Function(String value)? onSubmit;
  final Function(String value)? onChange;
  final Function(PointerDownEvent)? onTapOutside;
  final Function()? onTap;
  final Widget? icon;
  final Widget? prefixIcon;
  final double? height;
  final double? width;
  final Color fillColor;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final bool enableInteractiveSelection;
  final bool isWithValidationMsg;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final EdgeInsets? contentPadding;
  final double radius;
  final int? maxLines;

  // ignore: prefer_const_constructors_in_immutables
  CustomTextField({
    super.key,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.hint = "name",
    this.textInputAction = TextInputAction.next,
    required this.validationState,
    this.validatePadding = 20,
    this.enabled = true,
    required this.textEditingController,
    this.validateText = '',
    required this.onSubmit,
    this.onTapOutside,
    this.textInputType = TextInputType.text,
    this.onChange,
    this.onTap,
    this.border,
    this.prefixIcon,
    this.icon,
    this.contentPadding,
    this.height = 48,
    this.radius = 0.0,
    this.width,
    this.maxLines,
    this.inputFormatters,
    this.fillColor = AppColors.white,
    this.focusNode,
    this.hintStyle,
    this.isWithValidationMsg = true,
    this.enableInteractiveSelection = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.label,
    this.paddingTop = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: marginTop,
        bottom: marginBottom,
        start: marginLeft,
        end: marginRight,
      ),
      child: InkWell(
        onTap: onTap,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: height,
              width: width ?? double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                boxShadow: defaultBoxShadow(
                  bgColor: enabled ? AppColors.white : AppColors.disabledGrey,
                ),
              ),
              child: TextFormField(
                expands: maxLines != null ? false : true,
                maxLines: maxLines,
                minLines: maxLines,
                enableInteractiveSelection: enableInteractiveSelection,
                onTap: onTap,
                focusNode: focusNode,
                showCursor: focusNode?.hasFocus,
                inputFormatters: inputFormatters,
                onChanged: onChange,
                keyboardType: textInputType,
                textInputAction: textInputAction,
                onFieldSubmitted: onSubmit,
                style: AppFonts.inter16Black400,
                controller: textEditingController,
                onTapOutside: (pointerDownEvent) {
                  if(onTapOutside != null) {
                    onTapOutside!(pointerDownEvent);
                  }
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  labelText: label,
                  labelStyle: AppFonts.inter18White500,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: icon,
                  prefixIcon: prefixIcon,
                  prefixIconConstraints: const BoxConstraints(),
                  hintText: hint,
                  hintStyle: hintStyle ?? AppFonts.inter15HintGrey400,
                  contentPadding: contentPadding ??
                      EdgeInsetsDirectional.only(
                        start: prefixIcon != null ? 86 : 16,
                        end: 12,
                        top: 14,
                        bottom: 12,
                      ),
                  border: border ??
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: AppColors.greyBorder,
                        ),
                      ),
                  focusedBorder:
                      (validationState == TextFieldValidation.notValid)
                          ? OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.errorRed,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            )
                          : border ??
                              OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                  color: AppColors.greyBorder,
                                ),
                              ),
                  fillColor: fillColor,
                  enabled: enabled,
                  filled: false,
                  disabledBorder:
                      (validationState == TextFieldValidation.notValid)
                          ? OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.errorRed,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            )
                          : border ??
                              OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                  color: AppColors.greyBorder,
                                ),
                              ),
                  enabledBorder:
                      (validationState == TextFieldValidation.notValid)
                          ? OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.errorRed,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            )
                          : border ??
                              OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                  color: AppColors.greyBorder,
                                ),
                              ),
                ),
              ),
            ),
            if ((validationState == TextFieldValidation.notValid) &&
                isWithValidationMsg)
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 8,
                  start: validatePadding,
                ),
                child: Text(
                  validateText.isNotEmpty ? validateText : "This field cannot be empty",
                  style: AppFonts.inter14Red400,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget codeTextField({
  required final TextEditingController controller,
  required final Function(String value) onChange,
  required final FocusNode node,
  final double height = 48,
  final double width = 48,
  final int maxNumbers = 1,
  final String hint = '',
  final Function(PointerDownEvent)? onTapOutside,
  required BuildContext context,
}) {
  return Container(
    clipBehavior: Clip.antiAlias,
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
    ),
    child: TextFormField(
      focusNode: node,
      autofocus: true,
      showCursor: true,
      // maxLength: 1,
      onTapOutside: onTapOutside ??
          (pointerDownEvent) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(maxNumbers)
      ],
      textInputAction: TextInputAction.next,
      onChanged: onChange,
      style: AppFonts.inter16Black400,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppFonts.inter24HintBlack400,
        // isDense: true,
        contentPadding: const EdgeInsets.only(bottom: 24, left: 4),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.codeFieldBorder,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.black,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabled: true,
        filled: false,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.codeFieldBorder,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  );
}
