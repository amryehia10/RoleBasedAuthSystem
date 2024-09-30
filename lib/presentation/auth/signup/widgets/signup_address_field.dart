import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

import '../../../../blocs/signup/signup_cubit.dart';

class SignupAddressField extends StatelessWidget {
  const SignupAddressField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => current is CheckAddressValidationState,
      builder: (context, state) {
        var blocRead = context.read<SignupCubit>();

        return AuthTextFieldWithHeader(
          header: "Address",
          hintText: blocRead.customerAddressController.text.isEmpty
              ? "Enter Your Address"
              : "Please Enter Valid Address",
          isRequiredFiled: true,
          isWithValidation: true,
          textInputType: TextInputType.text,
          validationText: "Please Enter Valid Address.",
          textEditingController: blocRead.customerAddressController,
          validation: context.watch<SignupCubit>().customerAddressValidation,
          onTapOutside: () {
            blocRead.checkAddressValidation();
          },
          onChange: (value) {
            if (value.isEmpty ||
                blocRead.customerAddressValidation !=
                    TextFieldValidation.normal) {
              blocRead.checkAddressValidation();
            }
          },
          onSubmit: (value) {
            blocRead.checkAddressValidation();
          },
        );
      },
    );
  }
}
