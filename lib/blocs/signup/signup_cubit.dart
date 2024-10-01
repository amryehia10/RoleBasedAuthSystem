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

  TextEditingController customerNameController = TextEditingController();
  TextFieldValidation customerNameValidation = TextFieldValidation.normal;

  TextEditingController customerEmailController = TextEditingController();
  TextFieldValidation customerEmailValidation = TextFieldValidation.normal;

  TextEditingController customerAddressController = TextEditingController();
  TextFieldValidation customerAddressValidation = TextFieldValidation.normal;

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
    if (customerNameController.text.isNotEmpty) {
      customerNameValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkName(
          name: customerNameController.text,
          validation: customerNameValidation,
        ),
      );
    } else {
      customerNameValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkName(
          name: customerNameController.text,
          validation: customerNameValidation,
        ),
      );
    }
  }

  void checkAddressValidation() {
    if (customerAddressController.text.isNotEmpty) {
      customerAddressValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkAddress(
          address: customerAddressController.text,
          validation: customerAddressValidation,
        ),
      );
    } else {
      customerAddressValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkAddress(
          address: customerAddressController.text,
          validation: customerAddressValidation,
        ),
      );
    }
  }

  void checkEmailValidationState() {
    if ((customerEmailController.text.isNotEmpty ||
            customerEmailValidation == TextFieldValidation.notValid) &&
        AppRegex.isEmailValid(customerEmailController.text)) {
      customerEmailValidation = TextFieldValidation.valid;
      emit(
        SignupState.checkEmail(
          email: customerEmailController.text,
          validation: customerEmailValidation,
        ),
      );
    } else {
      customerEmailValidation = TextFieldValidation.notValid;
      emit(
        SignupState.checkEmail(
          email: customerEmailController.text,
          validation: customerEmailValidation,
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
    if(isFieldNotEmpty(customerNameController) &&
      isFieldNotEmpty(customerEmailController) &&
      isFieldNotEmpty(customerAddressController) ) {
        if(isFieldValid(customerEmailValidation) &&
        isFieldValid(customerNameValidation) &&
        isFieldValid(customerAddressValidation)) {
          emit(const SignupState.signUpLoading());
          final res = await _authRepository.signup(
            name: customerNameController.text,
            email: customerEmailController.text,
            address: customerAddressController.text
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
    String otp = codeControllers[0].text +
    codeControllers[1].text +
    codeControllers[2].text +
    codeControllers[3].text +
    codeControllers[4].text +
    codeControllers[5].text;

    final res = await _authRepository.verifyOtp(email: customerEmailController.text, otp: otp);
    res.fold(
      (errMsg) {
        emit(SignupState.verifyOTPError(errMsg: errMsg));
      }, 
      (successMsg) {
        emit(SignupState.verifyOTPSuccess(successMsg: successMsg));
      }
    );
  }
}
