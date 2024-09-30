import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/signup_address_field.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/signup_email_field.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/signup_name_field.dart';

import '../../../blocs/signup/signup_cubit.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/custom_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var blocWatch = context.watch<SignupCubit>();
    var blocRead = context.read<SignupCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SizedBox(
        width: AppConstants.screenWidth(context),
        height: AppConstants.screenHeight(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultHeader(
              header: "Signup",
              textAlignment: AlignmentDirectional.topCenter,
              onBackPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SignupNameField(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: SignupEmailField(),
                    ),
                    const SignupAddressField(),
                    const SizedBox(
                      height: 12,
                    ),
                    BlocConsumer<SignupCubit, SignupState>(
                      listener: (context, state) {
                        
                      },
                      builder: (context, state) {
                        return DefaultButton(
                          marginRight: 16,
                          marginLeft: 16,
                          marginTop: 24,
                          marginBottom: 24,
                          text: "Submit",
                          function: () {
                            Navigator.of(context).pushNamed(Routes.otpScreen, arguments: context.read<SignupCubit>());
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
