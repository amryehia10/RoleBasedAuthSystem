part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.checkEmail({
    required String email,
    required TextFieldValidation validation,
  }) = CheckLoginEmailValidationState;

  const factory LoginState.checkLoginPassword({
    required String password,
    required TextFieldValidation validation,
  }) = CheckLoginPasswordValidationState;

  const factory LoginState.checkNewPassword({
    required String password,
    required TextFieldValidation validation,
  }) = CheckNewPasswordValidationState;

  const factory LoginState.checkConfirmPassword({
    required String confirmPassword,
    required TextFieldValidation validation,
  }) = CheckConfirmPasswordValidationState;

  const factory LoginState.loginLoading() = LoginLoadingState;
  const factory LoginState.loginSuccess() = LoginSuccessState;
  const factory LoginState.loginError(final String errMsg) = LoginErrorState;

  const factory LoginState.forgetPasswordLoading() = ForgetPasswordLoading;
  const factory LoginState.forgetPasswordSuccess(final String successMsg) = ForgetPasswordSuccess;
  const factory LoginState.forgetPasswordError(final String errMsg) = ForgetPasswordError;

  const factory LoginState.verifyOTPLoading() = VerifyOTPLoadingState;
  const factory LoginState.verifyOTPError({
    required String errMsg,
  }) = VerifyOTPErrorState;
  const factory LoginState.verifyOTPSuccess({
    required String successMsg,
  }) = VerifyOTPSuccessState;

    const factory LoginState.resetPasswordLoading() = ResetPasswordLoading;
  const factory LoginState.resetPasswordError({
    required String errMsg,
  }) = ResetPasswordError;
  const factory LoginState.resetPasswordSuccess({
    required String successMsg,
  }) = ResetPasswordSuccess;
}
