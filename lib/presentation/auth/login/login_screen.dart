import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/widgets/auth_rich_text.dart';
import 'package:role_based_auth_system/presentation/auth/login/components/forget_password_button.dart';
import 'package:role_based_auth_system/presentation/auth/login/components/login_email.dart';
import 'package:role_based_auth_system/presentation/auth/login/components/login_password.dart';

import '../../../blocs/login/login_cubit.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/widgets/custom_header.dart';
import '../../../core/widgets/default_buttons.dart';
import '../../../core/widgets/snackbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: AppConstants.screenHeight(context),
          width: AppConstants.screenWidth(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DefaultHeader(
                  header: "Login",
                  textAlignment: AlignmentDirectional.center,
                  onBackPressed: () =>  Navigator.of(context).pushReplacementNamed(Routes.layoutScreen,)
,
                ),
                const SizedBox(
                  height: 48,
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  buildWhen: (previous, current) =>
                      current is CheckLoginEmailValidationState,
                  builder: (context, state) {
                    return const LoginEmail();
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  buildWhen: (previous, current) =>
                      current is CheckLoginPasswordValidationState,
                  builder: (context, state) {
                    return const LoginPassword();
                  },
                ),
                const ForgetPasswordButton(),
                BlocConsumer<LoginCubit, LoginState>(
                  buildWhen: (previous, current) {
                    return
                        current is LoginSuccessState ||
                        current is LoginErrorState ||
                        current is LoginLoadingState;
                  },
                  listenWhen: (previous, current) {
                    return
                        current is LoginSuccessState ||
                        current is LoginErrorState;
                  },
                  listener: (context, state) {
                    if (state is LoginErrorState) {
                      defaultErrorSnackBar(
                        context: context,
                        message: state.errMsg,
                      );
                    } else if (state is LoginSuccessState) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          Routes.layoutScreen,
                          (route) => false,
                        );
                    }
                  },
                  builder: (context, state) {
                    var blocRead = context.read<LoginCubit>();
                    return DefaultButton(
                      loading: state is LoginLoadingState,
                      function: () {
                        blocRead.onLoginButtonClicked();
                      },
                      text: "Login",
                      marginTop: 24,
                      marginLeft: 20,
                      marginRight: 20,
                      marginBottom: 15,
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: AuthRichText(
                    text: "Don't have an account? ",
                    buttonText: "SignUp",
                    buttonStyle: AppFonts.inter16PrimaryBlue400
                      .copyWith(fontWeight: FontWeight.w700),
                    onTap: () {
                        Navigator.of(context).pushNamed(
                          Routes.signupScreen,
                        );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}