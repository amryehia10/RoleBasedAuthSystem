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

  const factory LoginState.loginLoading() = LoginLoadingState;
  const factory LoginState.loginSuccess() = LoginSuccessState;
  const factory LoginState.loginError(final String errMsg) = LoginErrorState;
}