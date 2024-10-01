import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/widgets/custom_header.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_address.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_email.dart';
import 'package:role_based_auth_system/presentation/layout/profile/widgets/profile_name.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var blocRead = context.read<ProfileCubit>();
    var authRead = context.read<AuthRepository>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: AppConstants.screenHeight(context),
          width: AppConstants.screenWidth(context),
          child: Column(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProfileName(),
                        ProfileEmail(),
                        ProfileAddress(),
                      ],
                    ),
                  ),
                ),
              ),
              BlocConsumer<ProfileCubit, ProfileState>(
                listener: (context, state) {
                  // if(state is EditProfileErrorState) {
                  //   defaultErrorSnackBar(
                  //     context: context,
                  //     message: state.errMsg,
                  //   );
                  // } else if(state is EditProfileSuccessState) {
                  //   defaultSuccessSnackBar(context: context, message: state.success);
                  // }
                },
                builder: (context, state) {
                  return SizedBox(
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DefaultButton(
                        function: () {
                          // context.read<ProfileCubit>().editProfile();
                        },
                        // loading: state is EditProfileLoadingState,
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