import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/login/login_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class ConfirmNewForgetPassword extends StatelessWidget {
  const ConfirmNewForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextFieldWithHeader(
      onTap: () {},
      header: "Confirm Password",
      isRequiredFiled: true,
      hintText: "Re-Enter Password",
      isPassword: true,
      isWithValidation: true,
      textInputType: TextInputType.text,
      validationText: "Passwords do not match.",
      textInputAction: TextInputAction.next,
      textEditingController: context.read<LoginCubit>().confirmPasswordController,
      validation: context.watch<LoginCubit>().confirmPasswordValidation,
      onChange: (value) {
        if (value.isEmpty ||
          context.read<LoginCubit>().confirmPasswordValidation != TextFieldValidation.normal) {
          context.read<LoginCubit>().checkConfirmPasswordValidation();
        }
      },
      onSubmit: (value) {
        context.read<LoginCubit>().checkConfirmPasswordValidation();
      },
      onTapOutside: () {
        context.read<LoginCubit>().checkConfirmPasswordValidation();
      },
    );
  }
}
