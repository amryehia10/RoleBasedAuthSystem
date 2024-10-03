import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/helpers/app_regex.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';

import '../../core/helpers/enums.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository _authRepository;
  SignupCubit(this._authRepository) : super(const SignupState.initial());

  TextEditingController userNameController = TextEditingController();
  TextFieldValidation userNameValidation = TextFieldValidation.normal;

  TextEditingController userEmailController = TextEditingController();
  TextFieldValidation userEmailValidation = TextFieldValidation.normal;

  TextEditingController userAddressController = TextEditingController();
  TextFieldValidation userAddressValidation = TextFieldValidation.normal;

  TextEditingController newPasswordController = TextEditingController();
  TextFieldValidation newPasswordValidation = TextFieldValidation.normal;

  TextEditingController confirmPasswordController = TextEditingController();
  TextFieldValidation confirmPasswordValidation = TextFieldValidation.normal;

  List<TextEditingController> codeControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  String otp = '';

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

  void checkUserNameValidation() {
    if (userNameController.text.isNotEmpty) {
      userNameValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkName(
          name: userNameController.text,
          validation: userNameValidation,
        ),
      );
    } else {
      userNameValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkName(
          name: userNameController.text,
          validation: userNameValidation,
        ),
      );
    }
  }

  void checkAddressValidation() {
    if (userAddressController.text.isNotEmpty) {
      userAddressValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkAddress(
          address: userAddressController.text,
          validation: userAddressValidation,
        ),
      );
    } else {
      userAddressValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkAddress(
          address: userAddressController.text,
          validation: userAddressValidation,
        ),
      );
    }
  }

  void checkEmailValidationState() {
    if ((userEmailController.text.isNotEmpty ||
            userEmailValidation == TextFieldValidation.notValid) &&
        AppRegex.isEmailValid(userEmailController.text)) {
      userEmailValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkEmail(
          email: userEmailController.text,
          validation: userEmailValidation,
        ),
      );
    } else {
      userEmailValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkEmail(
          email: userEmailController.text,
          validation: userEmailValidation,
        ),
      );
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
      SignupState.checkNewPassword(
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
        SignupState.checkConfirmPassword(
          confirmPassword: confirmPasswordController.text,
          validation: confirmPasswordValidation,
        ),
      );
    } else {
      confirmPasswordValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkConfirmPassword(
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

  Future<bool> signUp() async{
    bool isOtpSent = false;
    checkAddressValidation();
    checkEmailValidationState();
    checkUserNameValidation();
    if(isFieldNotEmpty(userNameController) &&
      isFieldNotEmpty(userEmailController) &&
      isFieldNotEmpty(userAddressController) ) {
        if(isFieldValid(userEmailValidation) &&
        isFieldValid(userNameValidation) &&
        isFieldValid(userAddressValidation)) {
          emit(const SignupState.signUpLoading());
          final res = await _authRepository.signup(
            name: userNameController.text,
            email: userEmailController.text,
            address: userAddressController.text
          );

          res.fold(
            (errMsg) {
              emit(SignupState.signUpError(errMsg: errMsg));
            }, 
            (successMsg) {
              isOtpSent = true;
              emit(SignupState.signUpSuccess(successMsg: successMsg));
            }
          );
        }
    } else {
      emit(const SignupState.signUpError(
          errMsg: "Please complete all required fields"));
    }
    return isOtpSent;
  }

  void verifyOtp() async {
    emit(const SignupState.verifyOTPLoading());
    otp = codeControllers[0].text +
    codeControllers[1].text +
    codeControllers[2].text +
    codeControllers[3].text +
    codeControllers[4].text +
    codeControllers[5].text;

    final res = await _authRepository.verifyOtp(email: userEmailController.text, otp: otp);
    res.fold(
      (errMsg) {
        emit(SignupState.verifyOTPError(errMsg: errMsg));
      }, 
      (successMsg) {
        emit(SignupState.verifyOTPSuccess(successMsg: successMsg));
      }
    );
  }

  void resetPassword() async {
    checkNewPasswordValidation();
    checkConfirmPasswordValidation();
    emit(const SignupState.resetPasswordLoading());
    if (newPasswordValidation == TextFieldValidation.valid &&
      confirmPasswordValidation == TextFieldValidation.valid) {
        final res = await _authRepository.resetPassword(email: userEmailController.text, otp: otp, password: newPasswordController.text);
        res.fold(
          (errMsg) {
            emit(SignupState.resetPasswordError(errMsg: errMsg));
          }, 
          (successMsg) {
            emit(SignupState.resetPasswordSuccess(successMsg: successMsg));
          }
        );
        
      } else {
        emit(const SignupState.resetPasswordError(errMsg: "Please complete all fields"));
      }
  }
}
