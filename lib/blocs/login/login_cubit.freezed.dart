// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckLoginEmailValidationStateImplCopyWith<$Res> {
  factory _$$CheckLoginEmailValidationStateImplCopyWith(
          _$CheckLoginEmailValidationStateImpl value,
          $Res Function(_$CheckLoginEmailValidationStateImpl) then) =
      __$$CheckLoginEmailValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckLoginEmailValidationStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$CheckLoginEmailValidationStateImpl>
    implements _$$CheckLoginEmailValidationStateImplCopyWith<$Res> {
  __$$CheckLoginEmailValidationStateImplCopyWithImpl(
      _$CheckLoginEmailValidationStateImpl _value,
      $Res Function(_$CheckLoginEmailValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? validation = null,
  }) {
    return _then(_$CheckLoginEmailValidationStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as TextFieldValidation,
    ));
  }
}

/// @nodoc

class _$CheckLoginEmailValidationStateImpl
    implements CheckLoginEmailValidationState {
  const _$CheckLoginEmailValidationStateImpl(
      {required this.email, required this.validation});

  @override
  final String email;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'LoginState.checkEmail(email: $email, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLoginEmailValidationStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckLoginEmailValidationStateImplCopyWith<
          _$CheckLoginEmailValidationStateImpl>
      get copyWith => __$$CheckLoginEmailValidationStateImplCopyWithImpl<
          _$CheckLoginEmailValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return checkEmail(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return checkEmail?.call(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(email, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return checkEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return checkEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(this);
    }
    return orElse();
  }
}

abstract class CheckLoginEmailValidationState implements LoginState {
  const factory CheckLoginEmailValidationState(
          {required final String email,
          required final TextFieldValidation validation}) =
      _$CheckLoginEmailValidationStateImpl;

  String get email;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckLoginEmailValidationStateImplCopyWith<
          _$CheckLoginEmailValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckLoginPasswordValidationStateImplCopyWith<$Res> {
  factory _$$CheckLoginPasswordValidationStateImplCopyWith(
          _$CheckLoginPasswordValidationStateImpl value,
          $Res Function(_$CheckLoginPasswordValidationStateImpl) then) =
      __$$CheckLoginPasswordValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckLoginPasswordValidationStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res,
        _$CheckLoginPasswordValidationStateImpl>
    implements _$$CheckLoginPasswordValidationStateImplCopyWith<$Res> {
  __$$CheckLoginPasswordValidationStateImplCopyWithImpl(
      _$CheckLoginPasswordValidationStateImpl _value,
      $Res Function(_$CheckLoginPasswordValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? validation = null,
  }) {
    return _then(_$CheckLoginPasswordValidationStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as TextFieldValidation,
    ));
  }
}

/// @nodoc

class _$CheckLoginPasswordValidationStateImpl
    implements CheckLoginPasswordValidationState {
  const _$CheckLoginPasswordValidationStateImpl(
      {required this.password, required this.validation});

  @override
  final String password;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'LoginState.checkLoginPassword(password: $password, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLoginPasswordValidationStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckLoginPasswordValidationStateImplCopyWith<
          _$CheckLoginPasswordValidationStateImpl>
      get copyWith => __$$CheckLoginPasswordValidationStateImplCopyWithImpl<
          _$CheckLoginPasswordValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return checkLoginPassword(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return checkLoginPassword?.call(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (checkLoginPassword != null) {
      return checkLoginPassword(password, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return checkLoginPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return checkLoginPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (checkLoginPassword != null) {
      return checkLoginPassword(this);
    }
    return orElse();
  }
}

abstract class CheckLoginPasswordValidationState implements LoginState {
  const factory CheckLoginPasswordValidationState(
          {required final String password,
          required final TextFieldValidation validation}) =
      _$CheckLoginPasswordValidationStateImpl;

  String get password;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckLoginPasswordValidationStateImplCopyWith<
          _$CheckLoginPasswordValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<$Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl value,
          $Res Function(_$LoginLoadingStateImpl) then) =
      __$$LoginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingStateImpl>
    implements _$$LoginLoadingStateImplCopyWith<$Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl _value,
      $Res Function(_$LoginLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingStateImpl implements LoginLoadingState {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState implements LoginState {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessStateImpl implements LoginSuccessState {
  const _$LoginSuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements LoginState {
  const factory LoginSuccessState() = _$LoginSuccessStateImpl;
}

/// @nodoc
abstract class _$$LoginErrorStateImplCopyWith<$Res> {
  factory _$$LoginErrorStateImplCopyWith(_$LoginErrorStateImpl value,
          $Res Function(_$LoginErrorStateImpl) then) =
      __$$LoginErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$LoginErrorStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorStateImpl>
    implements _$$LoginErrorStateImplCopyWith<$Res> {
  __$$LoginErrorStateImplCopyWithImpl(
      _$LoginErrorStateImpl _value, $Res Function(_$LoginErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$LoginErrorStateImpl(
      null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorStateImpl implements LoginErrorState {
  const _$LoginErrorStateImpl(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'LoginState.loginError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorStateImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      __$$LoginErrorStateImplCopyWithImpl<_$LoginErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String password, TextFieldValidation validation)
        checkLoginPassword,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String errMsg) loginError,
  }) {
    return loginError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String errMsg)? loginError,
  }) {
    return loginError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String password, TextFieldValidation validation)?
        checkLoginPassword,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String errMsg)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckLoginEmailValidationState value) checkEmail,
    required TResult Function(CheckLoginPasswordValidationState value)
        checkLoginPassword,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult? Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckLoginEmailValidationState value)? checkEmail,
    TResult Function(CheckLoginPasswordValidationState value)?
        checkLoginPassword,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginErrorState implements LoginState {
  const factory LoginErrorState(final String errMsg) = _$LoginErrorStateImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
