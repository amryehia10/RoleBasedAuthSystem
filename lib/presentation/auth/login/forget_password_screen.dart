import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/login/login_cubit.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/routing/routes.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';
import 'package:role_based_auth_system/core/widgets/custom_header.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/presentation/auth/login/widgets/login_email.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SizedBox(
        width: AppConstants.screenWidth(context),
        height: AppConstants.screenHeight(context),
        child: Column(
          children: [
            DefaultHeader(
              header: "Reset Password",
              textAlignment: AlignmentDirectional.center,
              onBackPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text(
                "Enter the email associated with your account and we’ll send an email with instructions to reset your password.",
                style: AppFonts.inter16Grey400,
              ),
            ),
            BlocBuilder<LoginCubit, LoginState>(
              buildWhen: (previous, current) =>
                  current is CheckLoginEmailValidationState,
              builder: (context, state) {
                return const LoginEmail();
              },
            ),
            const Spacer(),
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                // if(state is ForgetPasswordErrorState) {
                //    defaultErrorSnackBar(
                //       context: context,
                //       message: state.errMsg,
                //     );
                // } else if(state is ForgetPasswordSuccessState) {
                //     Navigator.of(context).pushReplacementNamed(
                //     Routes.otpForgetPasswordScreen,
                //     arguments: context.read<LoginCubit>());
                // }
              },
              builder: (context, state) {
                var blocRead = context.read<LoginCubit>();
                return DefaultButton(
                  function: () {
                    Navigator.of(context).pushNamed(Routes.otpForgetScreen, arguments: context.read<LoginCubit>());

                    // blocRead.forgetPassword();
                  },
                  // loading: state is ForgetPasswordLoadingState,
                  text: "Continue",
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
