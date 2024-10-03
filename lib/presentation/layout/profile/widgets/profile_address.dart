import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:role_based_auth_system/core/widgets/auth_text_field_with_header.dart';
import 'package:role_based_auth_system/models/user_model.dart';
class ProfileAddress extends StatelessWidget {
  final bool isFromAddNewUser;
  final UserModel? user;
  const ProfileAddress({super.key, this.isFromAddNewUser = false, this.user});

  @override
   @override
    Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => 
      // current is EditProfileSuccessState || 
                                        current is CheckAddressValidationState,
      builder: (context, state) {
        var blocRead = context.read<ProfileCubit>();
        // var customerAddress = context.watch<AuthRepository>().customer.customerAddress;
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: AuthTextFieldWithHeader(
            suffixIcon: isFromAddNewUser || context.read<AuthRepository>().user.role == "Viewer" ? null : const Icon(Icons.edit, color: AppColors.gold,),
            onTap: () {},
            isRequiredFiled: isFromAddNewUser ? true : false,
            header: "Address",
            isEnabled: context.read<AuthRepository>().user.role != "Viewer",
            hintText: isFromAddNewUser ? blocRead.profileAddress.text.isEmpty
              ? "Enter Your Address"
              : "Please Enter Valid Address" : user!.address,
            isWithValidation: isFromAddNewUser ? true : false,
            textInputType: TextInputType.text,
            textEditingController: blocRead.profileAddress,
            validation: isFromAddNewUser ? context.watch<ProfileCubit>().profileAddressValidation : TextFieldValidation.normal,
          onTapOutside: () {
            if(isFromAddNewUser) {
              blocRead.checkAddressValidation();
            }
          },
          onChange: (value) {
            if(isFromAddNewUser) {
              if (value.isEmpty ||
                  blocRead.profileAddressValidation !=
                      TextFieldValidation.normal) {
                blocRead.checkAddressValidation();
              }
            }
          },
          onSubmit: (value) {
            if(isFromAddNewUser) {
              blocRead.checkAddressValidation();
            }
          },
          ),
        );
      },
    );
  }
}