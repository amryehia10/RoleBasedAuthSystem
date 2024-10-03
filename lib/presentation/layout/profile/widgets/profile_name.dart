import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';
import 'package:role_based_auth_system/models/user_model.dart';


class ProfileName extends StatelessWidget {
  final bool isFromAddNewUser;
  final UserModel? user;
  const ProfileName({super.key, this.isFromAddNewUser = false, this.user});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => current is CheckNameValidationState,
      builder: (context, state) {
        var blocRead = context.read<ProfileCubit>();
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: AuthTextFieldWithHeader(
            onTap: () {},
            suffixIcon: isFromAddNewUser || context.read<AuthRepository>().user.role == "Viewer" ? null : const Icon(
              Icons.edit,
              color: AppColors.gold,
            ),
            isRequiredFiled: isFromAddNewUser ? true : false,
            isEnabled: context.read<AuthRepository>().user.role != "Viewer",
            header: "Name",
            hintText: isFromAddNewUser ? "Name" : user!.name,
            validationText: isFromAddNewUser ? blocRead.profileName.text.isEmpty
              ? "Please Enter Name"
              : "Please Enter Valid Name." : '',
            textEditingController: blocRead.profileName,
            validation: isFromAddNewUser ? context.watch<ProfileCubit>().profileNameValidation : TextFieldValidation.normal,
            onTapOutside: () {
              if(isFromAddNewUser)  {
                blocRead.checkNameValidation();
              }
            },
            onChange: (value) {
              if(isFromAddNewUser) {
                if (value.isEmpty ||
                    blocRead.profileNameValidation !=
                        TextFieldValidation.normal) {
                  blocRead.checkNameValidation();
                }
              }
            },
            onSubmit: (value) {
              if(isFromAddNewUser)  {
                blocRead.checkNameValidation();
              }
            },
          ),
        );
      },
    );
  }
}
