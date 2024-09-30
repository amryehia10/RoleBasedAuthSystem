
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class SignupEmailField extends StatelessWidget {
  const SignupEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => current is CheckEmailValidationState,
      builder: (context, state) {
        var blocRead = context.read<SignupCubit>();

        return AuthTextFieldWithHeader(
          header: "Email",
          isRequiredFiled: true,
          hintText: "Enter Your Email",
          isWithValidation: true,
          textInputType: TextInputType.emailAddress,
          validationText: blocRead.customerEmailController.text.isEmpty
              ? "Please Enter Email"
              : "Please Enter Valid Email.",
          textEditingController: blocRead.customerEmailController,
          validation: context.watch<SignupCubit>().customerEmailValidation,
          onTapOutside: () {
            blocRead.checkEmailValidationState();
          },
          onChange: (value) {
            if (value.isEmpty ||
                blocRead.customerEmailValidation !=
                    TextFieldValidation.normal) {
              blocRead.checkEmailValidationState();
            }
          },
          onSubmit: (value) {
            blocRead.checkEmailValidationState();
          },
        );
      },
    );
  }
}