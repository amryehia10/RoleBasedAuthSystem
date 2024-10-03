import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/helpers/app_regex.dart';
import 'package:role_based_auth_system/core/helpers/enums.dart';
import 'package:role_based_auth_system/core/services/local/storage_service.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/user_repository.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  ProfileCubit(this._userRepository, this._authRepository) : super(const ProfileState.initial());

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
  int roleIndex = 0;

  void changeRoleIndexValue(int index) {
    roleIndex = index;
    emit(ProfileState.changeRoleIndex(
        roleIndexValue: index));
  }
  
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

  void updateUser({required String email, required int id, required String address, required String name, required String role, required bool isCurrentUser}) async{
    checkNewPasswordValidation();
    checkConfirmPasswordValidation();
    emit(const ProfileState.updateUserLoading());
    if (passwordValidation == TextFieldValidation.valid &&
        confirmPasswordValidation == TextFieldValidation.valid) {
        final res = await _userRepository.updateUser(
            name: profileName.text.isEmpty ? name : profileName.text,
            address: profileAddress.text.isEmpty ? address : profileAddress.text,
            password: passwordController.text,
            email: email,
            role: roleIndex == 0 ? "Admin" : roleIndex == 1 ? "User" : "Viewer",
            id: id
          );
        res.fold(
          (errMsg) {
              emit(ProfileState.updateUserError(errMsg));
            }, 
            (updatedUser) {
              int index = _userRepository.users.indexWhere((user) => user.id == updatedUser.id);
              if(index != -1) {
                _userRepository.users[index] = updatedUser;
                if(isCurrentUser) {
                  _authRepository.user.name = updatedUser.name;
                  _authRepository.user.address = updatedUser.address;
                  StorageService.saveData(
                    "userData",
                    json.encode( _authRepository.user.toJson()),
                  );
                }
                emit(const ProfileState.updateUserSuccess("Updated Successfully"));
              } else {
                if(isCurrentUser) {
                  _authRepository.user.name = updatedUser.name;
                  _authRepository.user.address = updatedUser.address;
                  StorageService.saveData(
                    "userData",
                    json.encode( _authRepository.user.toJson()),
                  );
                  emit(const ProfileState.updateUserSuccess("Updated Successfully"));
                }
                emit(const ProfileState.updateUserError("User not found"));
              }
            }
        );
      } else {
        emit(const ProfileState.updateUserError("Please enter password"));
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

  void addUser() async{
    checkNewPasswordValidation();
    checkConfirmPasswordValidation();
    checkAddressValidation();
    checkNameValidation();
    checkEmailValidationState();
    emit(const ProfileState.updateUserLoading());
    if (passwordValidation == TextFieldValidation.valid &&
        confirmPasswordValidation == TextFieldValidation.valid &&
        isFieldNotEmpty(profileName) &&
        isFieldNotEmpty(profileEmail) &&
        isFieldNotEmpty(profileAddress) ) {
          if(isFieldValid(profileEmailValidation) &&
          isFieldValid(profileNameValidation) &&
          isFieldValid(profileAddressValidation)) {
            final res = await _userRepository.addUser(
                name: profileName.text,
                address: profileAddress.text,
                password: passwordController.text,
                email: profileEmail.text,
                role: roleIndex == 0 ? "Admin" : roleIndex == 1 ? "User" : "Viewer",
              );
              res.fold(
                (errMsg) {
                    emit(ProfileState.updateUserError(errMsg));
                  }, 
                  (addedUser) {
                    _userRepository.users.add(addedUser);
                    profileName.text = '';
                    profileAddress.text = '';
                    profileEmail.text = '';
                    passwordController.text = '';
                    confirmPasswordController.text = '';
                    roleIndex = 0;
                    emit(const ProfileState.updateUserSuccess("Added Successfully"));
                  }
              );
        }
      } else {
        emit(const ProfileState.updateUserError("Please complete all required fields"));
      }
  }
}
