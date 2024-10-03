import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/widgets/custom_header.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/core/widgets/snackbar.dart';
import 'package:role_based_auth_system/models/user_model.dart';
import 'package:role_based_auth_system/presentation/layout/home/widgets/user_roles_dropdown.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_address.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_confirm_password.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_email.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_name.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_password.dart';

class EditProfileScreen extends StatelessWidget {
  final bool isFromHome;
  final UserModel? user;
  const EditProfileScreen({super.key, this.isFromHome = false, this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: AppConstants.screenHeight(context),
          width: AppConstants.screenWidth(context),
          child: Column(
            children: [
              isFromHome ? DefaultHeader(
                header: "Update ${user!.name}",
                textAlignment: AlignmentDirectional.center,
                onBackPressed: () => Navigator.of(context).pop(),
              ) : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProfileName(user: user!,),
                        ProfileEmail(user: user!,),
                        ProfileAddress(user: user!,),
                        context.read<AuthRepository>().user.role != "Viewer" ? const ProfilePassword() : const SizedBox(),
                        context.read<AuthRepository>().user.role != "Viewer" ? const ProfileConfirmPassword() : const SizedBox(),
                        isFromHome && context.read<AuthRepository>().user.role != "Viewer" ? 
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: UserRolesDropdown(),
                        ) : const SizedBox()
                      ],
                    ),
                  ),
                ),
              ),
              BlocConsumer<ProfileCubit, ProfileState>(
                listener: (context, state) {
                  if(state is UpdateUserError) {
                    defaultErrorSnackBar(
                      context: context,
                      message: state.errMsg,
                    );
                  } else if(state is UpdateUserSuccess) {
                    defaultSuccessSnackBar(context: context, message: state.successMsg);
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DefaultButton(
                        function: () {
                          context.read<AuthRepository>().user.role != "Viewer" ?
                          context.read<ProfileCubit>().updateUser(
                            email: user!.email,
                            id: user!.id,
                            name: user!.name,
                            address: user!.address,
                            role: user!.role,
                            isCurrentUser: isFromHome == false
                          ) : null;
                        },
                        loading: state is UpdateUserLoading,
                        text: "Save",
                        marginTop: 20,
                        marginBottom: 20,
                        marginRight: 16,
                        marginLeft: 16,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}