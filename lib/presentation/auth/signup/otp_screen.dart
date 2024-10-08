import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';
import 'package:role_based_auth_system/core/widgets/auth_rich_text.dart';
import 'package:role_based_auth_system/core/widgets/custom_header.dart';
import 'package:role_based_auth_system/core/widgets/custom_text_fields.dart';
import 'package:role_based_auth_system/core/widgets/default_buttons.dart';
import 'package:role_based_auth_system/core/widgets/snackbar.dart';
import 'package:role_based_auth_system/presentation/auth/signup/widgets/otp_timer.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/routing/routes.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? otpTimer;
  int secondsRemaining = 120;
  String formattedTime = "2:00";
  void startTimer() {
    secondsRemaining = 120;
    formattedTime = "2:00";
    if (secondsRemaining != 120) {
      if (otpTimer != null) {
        otpTimer!.cancel();
      }
    }
    otpTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      secondsRemaining--;
      final minutes = secondsRemaining ~/ 60;
      final seconds = secondsRemaining % 60;
      setState(() {
        formattedTime = '$minutes:${seconds.toString().padLeft(2, '0')}';
      });

      if (secondsRemaining <= 0) {
        setState(() {
          if (otpTimer != null) {
            otpTimer!.cancel();
          }
        });
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    if (otpTimer != null) {
      otpTimer!.cancel();
    }
    super.dispose();
  }

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
                header: "",
                onBackPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.signupScreen, arguments: context.read<SignupCubit>());
                },
              ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Check Your mail",
                      style: AppFonts.inter24HeaderBlue600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Text(
                        "Please enter the OTP (One-Time Password) that was sent to your email to reset your password.",
                        style: AppFonts.inter14Grey400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) {
                  return current is VerifyOTPLoadingState ||
                    current is VerifyOTPSuccessState ||
                    current is VerifyOTPErrorState;
                },
                builder: (context, state) {
                  return 
                  state is VerifyOTPLoadingState
                      ? const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: CircularProgressIndicator(),
                        )
                      : 
                      secondsRemaining == 0
                          ? Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: AuthRichText(
                        alignmentDirectional: AlignmentDirectional.center,

                                buttonStyle: AppFonts.inter16PrimaryBlue400
                      .copyWith(fontWeight: FontWeight.w700),
                                text: "Didn’t get a code?",
                                buttonText: "Send again ",
                                
                                onTap: () async {
                                  await context
                                      .read<SignupCubit>()
                                      .signUp()
                                      .then(
                                    (value) {
                                      if (value) {
                                        startTimer();
                                      }
                                    },
                                  );
                                },
                              ),
                            )
                          : const SizedBox();
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...List.generate(6, (index) {
                    return codeTextField(
                        context: context,
                        onChange: (value) {
                          if (value.length == 1) {
                            if (index < 5) {
                              FocusScope.of(context).requestFocus(
                                context
                                    .read<SignupCubit>()
                                    .codeFocusNode[index + 1],
                              );
                            } else {
                              context
                                  .read<SignupCubit>()
                                  .codeFocusNode[index]
                                  .unfocus();
                            }
                          }
                        },
                        controller:
                            context.read<SignupCubit>().codeControllers[index],
                        node: context.read<SignupCubit>().codeFocusNode[index],
                        isText: true,
                        width: 47,
                        height: 47,
                      );
                  }),
                ],
              ),
              const SizedBox(height: 30,),
              OTPTimer(formattedTime: formattedTime,),
              
            
              const Spacer(),
              BlocConsumer<SignupCubit, SignupState>(
                listenWhen: (previous, current) =>
                  current is VerifyOTPSuccessState ||
                  current is VerifyOTPErrorState,
                listener: (context, state) {
                  if (state is VerifyOTPSuccessState) {
                    if (secondsRemaining != 120) {
                      if (otpTimer != null) {
                        otpTimer!.cancel();
                      }
                    }
                    Navigator.of(context).pushNamed(Routes.createNewPasswordScreen, arguments: context.read<SignupCubit>());
                  } else if (state is VerifyOTPErrorState) {
                    defaultErrorSnackBar(
                      context: context,
                      message: state.errMsg,
                    );
                  }
                },
                buildWhen: (previous, current) {
                  return current is VerifyOTPLoadingState ||
                  current is VerifyOTPSuccessState ||
                  current is VerifyOTPErrorState;
                },
                builder: (context, state) {
                  return DefaultButton(
                    function: () {
                      context.read<SignupCubit>().verifyOtp();
                    },
                    loading: state is VerifyOTPLoadingState,
                    text: "Verify",
                    marginRight: 41,
                    marginLeft: 41,
                    marginBottom: 20,
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