import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

import '../../../../blocs/signup/signup_cubit.dart';

class SignupNameField extends StatelessWidget {
  const SignupNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => current is CheckNameValidationState,
      builder: (context, state) {
        var blocRead = context.read<SignupCubit>();

        return AuthTextFieldWithHeader(
          isRequiredFiled: true,
          header: "Name",
          hintText: "Enter Your Name",
          isWithValidation: true,
          textInputType: TextInputType.name,
          validationText: blocRead.customerNameController.text.isEmpty
              ? "Please Enter Name"
              : "Please Enter Valid Name.",
          textEditingController: blocRead.customerNameController,
          validation: context.watch<SignupCubit>().customerNameValidation,
          onTapOutside: () {
            blocRead.checkUserNameValidation();
          },
          onChange: (value) {
            if (value.isEmpty ||
                blocRead.customerNameValidation != TextFieldValidation.normal) {
              blocRead.checkUserNameValidation();
            }
          },
          onSubmit: (value) {
            blocRead.checkUserNameValidation();
          },
        );
      },
    );
  }
}