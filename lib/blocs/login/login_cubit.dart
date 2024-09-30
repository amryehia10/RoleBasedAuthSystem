import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/helpers/app_regex.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';

import '../../core/services/networking/repositories/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState>{
  final AuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextFieldValidation emailValidation = TextFieldValidation.normal;

  TextEditingController passwordController = TextEditingController();
  TextFieldValidation passwordValidation = TextFieldValidation.normal;



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
    // if (emailValidation == TextFieldValidation.valid &&
    //     passwordValidation == TextFieldValidation.valid) {
    //   emit(const LoginState.loginLoading());
    //   try {
    //     final res = await _authRepository.customerLogin(
    //       email: emailController.text,
    //       password: passwordController.text,
    //     );
    //     res.fold((errMsg) {
    //       if(errMsg == 'reset') {
    //         emit(const LoginState.resetDialog());
    //       } else {
    //         emit(LoginState.loginError(errMsg));
    //       }
    //     }, (customer) async {
    //       _authRepository.customer = customer;
    //       UserTokenService.saveUserToken(customer.token);
    //       await _authRepository.setNotificationToken(
    //           AppConstants.fcmToken, customer.token);
    //       await _authRepository.getNotifications();
    //       await _paymentRepository.getSavedPaymentMethods();
    //       StorageService.saveData(
    //         "customerData",
    //         json.encode(customer.toJson()),
    //       );
    //       emit(
    //         const LoginState.loginSuccess(),
    //       );
    //     });
    //   } catch (e) {
    //     emit(LoginState.loginError(e.toString()));
    //   }
    // }
  }
}