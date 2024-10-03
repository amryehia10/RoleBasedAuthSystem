import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';
import 'package:role_based_auth_system/models/user_model.dart';

class ProfileEmail extends StatelessWidget {
  final bool isFromAddNewUser;
  final UserModel? user;
  const ProfileEmail({super.key, this.isFromAddNewUser = false, this.user});

  @override
  Widget build(BuildContext context) {
    var blocRead = context.read<ProfileCubit>();
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => current is CheckProfileEmailValidationState,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: AuthTextFieldWithHeader(
            header: "Email",
            isRequiredFiled: isFromAddNewUser ? true : false,
            hintText: isFromAddNewUser ? "Please Enter Email" : user!.email,
            isEnabled: isFromAddNewUser ? true : false,
            isWithValidation: isFromAddNewUser ? true : false,
            validationText: isFromAddNewUser ? blocRead.profileEmail.text.isEmpty
              ? "Please Enter Email"
              : "Please Enter Valid Email." : "",
            textInputType: TextInputType.emailAddress,
            textEditingController: blocRead.profileEmail,
            validation: isFromAddNewUser ? context.watch<ProfileCubit>().profileEmailValidation : TextFieldValidation.normal,
           onTapOutside: () {
            if(isFromAddNewUser) {
              blocRead.checkEmailValidationState();
            }
          },
          onChange: (value) {
            if(isFromAddNewUser) {
              if (value.isEmpty ||
                  blocRead.profileEmailValidation !=
                      TextFieldValidation.normal) {
                blocRead.checkEmailValidationState();
              }
            }
          },
          onSubmit: (value) {
            if(isFromAddNewUser) {
              blocRead.checkEmailValidationState();
            }
          },
          ),
        );
      },
    );
  }
}
