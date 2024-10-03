import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/widgets/snackbar.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/confirm_password.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/new_password.dart';

import '../../../core/routing/routes.dart';
import '../../../core/widgets/custom_header.dart';
import '../../../core/widgets/default_buttons.dart';

class CreateNewPassword extends StatelessWidget {
  final bool isFromProfile;
  const CreateNewPassword({super.key, this.isFromProfile = false});

  @override
  Widget build(BuildContext context) {
    var blocRead = context.read<SignupCubit>();
    blocRead.newPasswordController.text = '';
    blocRead.confirmPasswordController.text = '';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SizedBox(
        width: AppConstants.screenWidth(context),
        height: AppConstants.screenHeight(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultHeader(
              header: "Create New Password",
              textAlignment: AlignmentDirectional.topCenter,
              onBackPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.signupScreen, arguments: context.read<SignupCubit>());

              },
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<SignupCubit, SignupState>(
              buildWhen: (previous, current) =>
                  current is CheckNewPasswordValidationState,
              builder: (context, state) {
                return const NewPassword();
              },
            ),
            BlocBuilder<SignupCubit, SignupState>(
              buildWhen: (previous, current) =>
                  current is CheckConfirmPasswordValidationState,
              builder: (context, state) {
                return const ConfirmPassword();
              },
            ),
            const Spacer(),
            BlocConsumer<SignupCubit, SignupState>(
              listenWhen: (previous, current) {
                return current is ResetPasswordLoading ||
                    current is ResetPasswordSuccess ||
                    current is ResetPasswordError;
              },
              listener: (context, state) {
                if (state is ResetPasswordError) {
                  defaultErrorSnackBar(
                    context: context,
                    message: state.errMsg,
                  );
                } else if (state is ResetPasswordSuccess) {
                  Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
                }
              },
              builder: (context, state) {
                return DefaultButton(
                  function: () {
                    blocRead.resetPassword();
                  },
                  text: "Change Password",
                  loading: state is ResetPasswordLoading,
                  marginRight: 16,
                  marginLeft: 16,
                  marginBottom: 30,
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
