import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/helpers/app_regex.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  TextEditingController profileName = TextEditingController();
  TextEditingController profileEmail = TextEditingController();
  TextEditingController profileAddress = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextFieldValidation profileNameValidation = TextFieldValidation.normal;
  TextFieldValidation profileEmailValidation = TextFieldValidation.normal;
  TextFieldValidation profileAddressValidation = TextFieldValidation.normal;
  TextFieldValidation passwordValidation = TextFieldValidation.normal;
  TextFieldValidation confirmPasswordValidation = TextFieldValidation.normal;  


  
  void checkNameValidation() {
    if (profileName.text.isNotEmpty) {
      profileNameValidation = TextFieldValidation.valid;
      emit(
        ProfileState.checkProfileName(
          name: profileName.text,
          validation: profileNameValidation,
        ),
      );
    } else {
      profileNameValidation = TextFieldValidation.notValid;
      emit(
        ProfileState.checkProfileName(
          name: profileName.text,
          validation: profileNameValidation,
        ),
      );
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

    void checkAddressValidation() {
    if (profileAddress.text.isNotEmpty) {
      profileAddressValidation = TextFieldValidation.valid;
      emit(
        ProfileState.checkAddress(
          address: profileAddress.text,
          validation: profileAddressValidation,
        ),
      );
    } else {
      profileAddressValidation = TextFieldValidation.notValid;
      emit(
        ProfileState.checkAddress(
          address: profileAddress.text,
          validation: profileAddressValidation,
        ),
      );
    }
  }

   void checkNewPasswordValidation() {
    if (passwordController.text.isNotEmpty &&
        passwordController.text.length >= 6 &&
        AppRegex.hasSpecialCharacter(passwordController.text)) {
      passwordValidation = TextFieldValidation.valid;
    } else {
      passwordValidation = TextFieldValidation.notValid;
    }
    emit(
      ProfileState.checkProfilePassword(
        password: passwordController.text,
        validation: passwordValidation,
      ),
    );
  }

  void checkConfirmPasswordValidation() {
    if (confirmPasswordController.text.isNotEmpty &&
        confirmPasswordController.text == passwordController.text) {
      confirmPasswordValidation = TextFieldValidation.valid;
      emit(
        ProfileState.checkProfileConfirmPassword(
          confirmPassword: confirmPasswordController.text,
          validation: confirmPasswordValidation,
        ),
      );
    } else {
      confirmPasswordValidation = TextFieldValidation.notValid;
      emit(
        ProfileState.checkProfileConfirmPassword(
          confirmPassword: confirmPasswordController.text,
          validation: confirmPasswordValidation,
        ),
      );
    }
  }

  
  void checkEmailValidationState() {
    if ((profileEmail.text.isNotEmpty ||
            profileEmailValidation == TextFieldValidation.notValid) &&
        AppRegex.isEmailValid(profileEmail.text)) {
      profileEmailValidation = TextFieldValidation.valid;
      emit(
        ProfileState.checkEmail(
          email: profileEmail.text,
          validation: profileEmailValidation,
        ),
      );
    } else {
      profileEmailValidation = TextFieldValidation.notValid;
      emit(
        ProfileState.checkEmail(
          email: profileEmail.text,
          validation: profileEmailValidation,
        ),
      );
    }
  }
}
