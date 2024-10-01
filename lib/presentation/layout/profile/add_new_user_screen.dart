import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/widgets/custom_header.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_address.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_confirm_password.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_email.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_name.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_password.dart';

class AddNewUserScreen extends StatelessWidget {
  const AddNewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var blocWatch = context.watch<ProfileCubit>();
    var blocRead = context.read<ProfileCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SizedBox(
        width: AppConstants.screenWidth(context),
        height: AppConstants.screenHeight(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ProfileName(isFromAddNewUser: true),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: ProfileEmail(isFromAddNewUser: true),
                    ),
                    const ProfileAddress(isFromAddNewUser: true),
                    const ProfilePassword(),
                    const ProfileConfirmPassword(),
                    const SizedBox(
                      height: 12,
                    ),
                    BlocConsumer<ProfileCubit, ProfileState>(
                      listener: (context, state) {
                        
                      },
                      builder: (context, state) {
                        return DefaultButton(
                          marginRight: 16,
                          marginLeft: 16,
                          marginTop: 24,
                          marginBottom: 24,
                          text: "Add User",
                          function: () {
                            
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}