import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({super.key});

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
      textEditingController: context.read<SignupCubit>().confirmPasswordController,
      validation: context.watch<SignupCubit>().confirmPasswordValidation,
      onChange: (value) {
        if (value.isEmpty ||
          context.read<SignupCubit>().confirmPasswordValidation != TextFieldValidation.normal) {
          context.read<SignupCubit>().checkConfirmPasswordValidation();
        }
      },
      onSubmit: (value) {
        context.read<SignupCubit>().checkConfirmPasswordValidation();
      },
      onTapOutside: () {
        context.read<SignupCubit>().checkConfirmPasswordValidation();
      },
    );
  }
}
