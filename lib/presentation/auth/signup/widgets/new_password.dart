import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 15),
      child: AuthTextFieldWithHeader(
        onTap: () {},
        header: "Password",
        isRequiredFiled: true,
        hintText: context.read<SignupCubit>().newPasswordController.text.isEmpty
              ? "Please Enter Password"
              : "Please Enter Valid Password",
        isPassword: true,
        isWithValidation: true,
        textInputType: TextInputType.text,
        textInputAction: TextInputAction.next,
        validationText:
            "Password must be 6+ characters long and include at least 1 special character.",
        textEditingController: context.read<SignupCubit>().newPasswordController,
        validation: context.watch<SignupCubit>().newPasswordValidation,
        onChange: (value) {
          if (value.isEmpty ||
          context.read<SignupCubit>().newPasswordValidation != TextFieldValidation.normal) {
          context.read<SignupCubit>().checkNewPasswordValidation();
        }
        },
        onSubmit: (value) {
          context.read<SignupCubit>().checkNewPasswordValidation();
        },
        onTapOutside: () {
          context.read<SignupCubit>().checkNewPasswordValidation();
        },
      ),
    );
  }
}