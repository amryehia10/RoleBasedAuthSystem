import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/login/login_cubit.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';

class ProfilePassword extends StatelessWidget {
  const ProfilePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => current is CheckProfilePasswordValidationState,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 15),
          child: AuthTextFieldWithHeader(
            onTap: () {},
            header: "Password",
            isRequiredFiled: true,
            hintText:
                context.read<ProfileCubit>().passwordController.text.isEmpty
                    ? "Please Enter Password"
                    : "Please Enter Valid Password",
            isPassword: true,
            isWithValidation: true,
            textInputType: TextInputType.text,
            textInputAction: TextInputAction.next,
            validationText:
                "Password must be 6+ characters long and include at least 1 special character.",
            textEditingController:
                context.read<ProfileCubit>().passwordController,
            validation: context.watch<ProfileCubit>().passwordValidation,
            onChange: (value) {
              if (value.isEmpty ||
                  context.read<ProfileCubit>().passwordValidation !=
                      TextFieldValidation.normal) {
                context.read<ProfileCubit>().checkNewPasswordValidation();
              }
            },
            onSubmit: (value) {
              context.read<ProfileCubit>().checkNewPasswordValidation();
            },
            onTapOutside: () {
              context.read<ProfileCubit>().checkNewPasswordValidation();
            },
          ),
        );
      },
    );
  }
}
