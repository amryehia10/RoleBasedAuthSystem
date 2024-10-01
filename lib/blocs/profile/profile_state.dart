part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.checkProfileName({
    required String name,
    required TextFieldValidation validation,
  }) = CheckNameValidationState;

    const factory ProfileState.checkEmail({
    required String email,
    required TextFieldValidation validation,
  }) = CheckProfileEmailValidationState;
  const factory ProfileState.checkAddress({
    required String address,
    required TextFieldValidation validation,
  }) = CheckAddressValidationState;

    const factory ProfileState.checkProfilePassword({
    required String password,
    required TextFieldValidation validation,
  }) = CheckProfilePasswordValidationState;

  const factory ProfileState.checkProfileConfirmPassword({
    required String confirmPassword,
    required TextFieldValidation validation,
  }) = CheckProfileConfirmPasswordValidationState;
}