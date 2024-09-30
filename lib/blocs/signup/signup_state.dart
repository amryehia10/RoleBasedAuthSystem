part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.checkName({
    required String name,
    required TextFieldValidation validation,
  }) = CheckNameValidationState;

  const factory SignupState.checkEmail({
    required String email,
    required TextFieldValidation validation,
  }) = CheckEmailValidationState;
  const factory SignupState.checkAddress({
    required String address,
    required TextFieldValidation validation,
  }) = CheckAddressValidationState;

    const factory SignupState.checkNewPassword({
    required String password,
    required TextFieldValidation validation,
  }) = CheckNewPasswordValidationState;

  const factory SignupState.checkConfirmPassword({
    required String confirmPassword,
    required TextFieldValidation validation,
  }) = CheckConfirmPasswordValidationState;
}
