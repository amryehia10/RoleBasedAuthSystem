import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

import '../../../../blocs/login/login_cubit.dart';
import '../../../../core/helpers/enums.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTextFieldWithHeader(
      header: "Email",
      hintText: "Enter your Email",
      isWithValidation: true,
      textInputType: TextInputType.emailAddress,
      validationText: "Invalid Email Address.",
      textEditingController: context.read<LoginCubit>().emailController,
      validation: context.watch<LoginCubit>().emailValidation,
      onChange: (value) {
        if (value.isEmpty ||
            context.read<LoginCubit>().emailValidation !=
                TextFieldValidation.normal) {
          context.read<LoginCubit>().checkEmailValidationState();
        }
      },
      onSubmit: (value) {
        context.read<LoginCubit>().checkEmailValidationState();
      },
    );
  }
}
