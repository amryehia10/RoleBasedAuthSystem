import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/helpers/app_regex.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/services/local/storage_service.dart';
import 'package:role_based_auth_system/core/services/local/token_service.dart';

import '../../core/services/networking/repositories/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextFieldValidation emailValidation = TextFieldValidation.normal;

  TextEditingController passwordController = TextEditingController();
  TextFieldValidation passwordValidation = TextFieldValidation.normal;

  TextEditingController newPasswordController = TextEditingController();
  TextFieldValidation newPasswordValidation = TextFieldValidation.normal;

  TextEditingController confirmPasswordController = TextEditingController();
  TextFieldValidation confirmPasswordValidation = TextFieldValidation.normal;

  String otp = '';

  List<TextEditingController> codeControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  List<FocusNode> codeFocusNode = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  void clearCodeControllers() {
    for (var controller in codeControllers) {
      controller.clear();
    }
  }

  bool _areAllControllersFilled(List<TextEditingController> controllers) {
    for (var controller in controllers) {
      if (controller.text.isEmpty) {
        return false;
      }
    }
    return true;
  }

  void checkEmailValidationState() {
    if ((emailController.text.isNotEmpty ||
            emailValidation == TextFieldValidation.notValid) &&
        AppRegex.isEmailValid(emailController.text)) {
      emailValidation = TextFieldValidation.valid;
      emit(
        LoginState.checkEmail(
          email: emailController.text,
          validation: emailValidation,
        ),
      );
    } else {
      emailValidation = TextFieldValidation.notValid;
      emit(
        LoginState.checkEmail(
          email: emailController.text,
          validation: emailValidation,
        ),
      );
    }
  }

  void checkPasswordValidation() {
    if (passwordController.text.isEmpty) {
      passwordValidation = TextFieldValidation.notValid;
    } else {
      passwordValidation = TextFieldValidation.valid;
    }
    emit(
      LoginState.checkLoginPassword(
        password: passwordController.text,
        validation: passwordValidation,
      ),
    );
  }

  void onLoginButtonClicked() async {
    checkEmailValidationState();
    checkPasswordValidation();
    if (emailValidation == TextFieldValidation.valid &&
        passwordValidation == TextFieldValidation.valid) {
      emit(const LoginState.loginLoading());
      try {
        final res = await _authRepository.login(
          email: emailController.text,
          password: passwordController.text,
        );
        res.fold((errMsg) {
           emit(LoginState.loginError(errMsg));
        }, (user) async {
          _authRepository.user = user;
          UserTokenService.saveUserToken(user.token);
          StorageService.saveData(
            "userData",
            json.encode(user.toJson()),
          );
          emit(
            const LoginState.loginSuccess(),
          );
        });
      } catch (e) {
        emit(LoginState.loginError(e.toString()));
      }
    }
  }

  void checkNewPasswordValidation() {
    if (newPasswordController.text.isNotEmpty &&
        newPasswordController.text.length >= 6 &&
        AppRegex.hasSpecialCharacter(newPasswordController.text)) {
      newPasswordValidation = TextFieldValidation.valid;
    } else {
      newPasswordValidation = TextFieldValidation.notValid;
    }
    emit(
      LoginState.checkNewPassword(
        password: newPasswordController.text,
        validation: newPasswordValidation,
      ),
    );
  }

  void checkConfirmPasswordValidation() {
    if (confirmPasswordController.text.isNotEmpty &&
        confirmPasswordController.text == newPasswordController.text) {
      confirmPasswordValidation = TextFieldValidation.valid;
      emit(
        LoginState.checkConfirmPassword(
          confirmPassword: confirmPasswordController.text,
          validation: confirmPasswordValidation,
        ),
      );
    } else {
      confirmPasswordValidation = TextFieldValidation.notValid;
      emit(
        LoginState.checkConfirmPassword(
          confirmPassword: confirmPasswordController.text,
          validation: confirmPasswordValidation,
        ),
      );
    }
  }
  bool isFieldNotEmpty(TextEditingController controller) {
    if (controller.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isFieldValid(
  TextFieldValidation validation,
  ) {
    if (validation == TextFieldValidation.valid) {
      return true;
    } else {
      return false;
    }
  }
  Future<bool> forgetPassword() async {
    bool isOtpSent = false;
    checkEmailValidationState();
    if (isFieldNotEmpty(emailController)) {
      if (isFieldValid(emailValidation)) {
        emit(const LoginState.forgetPasswordLoading());
        final res = await _authRepository.forgetPassword(email: emailController.text);
        res.fold((errMsg) {
          emit(LoginState.forgetPasswordError(errMsg));
        }, (successMsg) {
          isOtpSent = true;
          emit(LoginState.forgetPasswordSuccess(successMsg));
        });
      }
    } else {
      emit(const LoginState.forgetPasswordError("Please Enter Email"));
    }
    return isOtpSent;
  }

  void verifyOtp() async {
    emit(const LoginState.verifyOTPLoading());
    otp = codeControllers[0].text +
    codeControllers[1].text +
    codeControllers[2].text +
    codeControllers[3].text +
    codeControllers[4].text +
    codeControllers[5].text;
   emit(const LoginState.verifyOTPSuccess(successMsg: "navigating to reset password"));
  }

  void resetPassword() async {
    checkNewPasswordValidation();
    checkConfirmPasswordValidation();
    emit(const LoginState.resetPasswordLoading());
    if (newPasswordValidation == TextFieldValidation.valid &&
      confirmPasswordValidation == TextFieldValidation.valid) {
        final res = await _authRepository.resetPassword(email: emailController.text, otp: otp, password: newPasswordController.text);
        res.fold(
          (errMsg) {
            emit(LoginState.resetPasswordError(errMsg: errMsg));
          }, 
          (successMsg) {
            emit(LoginState.resetPasswordSuccess(successMsg: successMsg));
          }
        );
      } else {
        emit(const LoginState.resetPasswordError(errMsg: "Please complete all fields"));
      }
  }
}
