import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class ProfileConfirmPassword extends StatelessWidget {
  const ProfileConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => current is CheckProfileConfirmPasswordValidationState,
      builder: (context, state) {
        return AuthTextFieldWithHeader(
          onTap: () {},
          header: "Confirm Password",
          isRequiredFiled:true,
          hintText: "Re-Enter Password",
          isPassword: true,
          isWithValidation: true,
          textInputType: TextInputType.text,
          validationText: "Passwords do not match.",
          textInputAction: TextInputAction.next,
          textEditingController:
              context.read<ProfileCubit>().confirmPasswordController,
          validation: context.watch<ProfileCubit>().confirmPasswordValidation,
          onChange: (value) {
            if (value.isEmpty ||
                context.read<ProfileCubit>().confirmPasswordValidation !=
                    TextFieldValidation.normal) {
              context.read<ProfileCubit>().checkConfirmPasswordValidation();
            }
          },
          onSubmit: (value) {
            context.read<ProfileCubit>().checkConfirmPasswordValidation();
          },
          onTapOutside: () {
            context.read<ProfileCubit>().checkConfirmPasswordValidation();
          },
        );
      },
    );
  }
}
