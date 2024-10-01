// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

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
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SignupState.initial()';
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
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
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
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckNameValidationStateImplCopyWith<$Res> {
  factory _$$CheckNameValidationStateImplCopyWith(
          _$CheckNameValidationStateImpl value,
          $Res Function(_$CheckNameValidationStateImpl) then) =
      __$$CheckNameValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckNameValidationStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$CheckNameValidationStateImpl>
    implements _$$CheckNameValidationStateImplCopyWith<$Res> {
  __$$CheckNameValidationStateImplCopyWithImpl(
      _$CheckNameValidationStateImpl _value,
      $Res Function(_$CheckNameValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? validation = null,
  }) {
    return _then(_$CheckNameValidationStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as TextFieldValidation,
    ));
  }
}

/// @nodoc

class _$CheckNameValidationStateImpl implements CheckNameValidationState {
  const _$CheckNameValidationStateImpl(
      {required this.name, required this.validation});

  @override
  final String name;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'SignupState.checkName(name: $name, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckNameValidationStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckNameValidationStateImplCopyWith<_$CheckNameValidationStateImpl>
      get copyWith => __$$CheckNameValidationStateImplCopyWithImpl<
          _$CheckNameValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return checkName(name, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return checkName?.call(name, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkName != null) {
      return checkName(name, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return checkName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return checkName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkName != null) {
      return checkName(this);
    }
    return orElse();
  }
}

abstract class CheckNameValidationState implements SignupState {
  const factory CheckNameValidationState(
          {required final String name,
          required final TextFieldValidation validation}) =
      _$CheckNameValidationStateImpl;

  String get name;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckNameValidationStateImplCopyWith<_$CheckNameValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckEmailValidationStateImplCopyWith<$Res> {
  factory _$$CheckEmailValidationStateImplCopyWith(
          _$CheckEmailValidationStateImpl value,
          $Res Function(_$CheckEmailValidationStateImpl) then) =
      __$$CheckEmailValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckEmailValidationStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$CheckEmailValidationStateImpl>
    implements _$$CheckEmailValidationStateImplCopyWith<$Res> {
  __$$CheckEmailValidationStateImplCopyWithImpl(
      _$CheckEmailValidationStateImpl _value,
      $Res Function(_$CheckEmailValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? validation = null,
  }) {
    return _then(_$CheckEmailValidationStateImpl(
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

class _$CheckEmailValidationStateImpl implements CheckEmailValidationState {
  const _$CheckEmailValidationStateImpl(
      {required this.email, required this.validation});

  @override
  final String email;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'SignupState.checkEmail(email: $email, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailValidationStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckEmailValidationStateImplCopyWith<_$CheckEmailValidationStateImpl>
      get copyWith => __$$CheckEmailValidationStateImplCopyWithImpl<
          _$CheckEmailValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return checkEmail(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return checkEmail?.call(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
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
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return checkEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return checkEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(this);
    }
    return orElse();
  }
}

abstract class CheckEmailValidationState implements SignupState {
  const factory CheckEmailValidationState(
          {required final String email,
          required final TextFieldValidation validation}) =
      _$CheckEmailValidationStateImpl;

  String get email;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckEmailValidationStateImplCopyWith<_$CheckEmailValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAddressValidationStateImplCopyWith<$Res> {
  factory _$$CheckAddressValidationStateImplCopyWith(
          _$CheckAddressValidationStateImpl value,
          $Res Function(_$CheckAddressValidationStateImpl) then) =
      __$$CheckAddressValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckAddressValidationStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$CheckAddressValidationStateImpl>
    implements _$$CheckAddressValidationStateImplCopyWith<$Res> {
  __$$CheckAddressValidationStateImplCopyWithImpl(
      _$CheckAddressValidationStateImpl _value,
      $Res Function(_$CheckAddressValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? validation = null,
  }) {
    return _then(_$CheckAddressValidationStateImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as TextFieldValidation,
    ));
  }
}

/// @nodoc

class _$CheckAddressValidationStateImpl implements CheckAddressValidationState {
  const _$CheckAddressValidationStateImpl(
      {required this.address, required this.validation});

  @override
  final String address;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'SignupState.checkAddress(address: $address, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAddressValidationStateImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAddressValidationStateImplCopyWith<_$CheckAddressValidationStateImpl>
      get copyWith => __$$CheckAddressValidationStateImplCopyWithImpl<
          _$CheckAddressValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return checkAddress(address, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return checkAddress?.call(address, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkAddress != null) {
      return checkAddress(address, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return checkAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return checkAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkAddress != null) {
      return checkAddress(this);
    }
    return orElse();
  }
}

abstract class CheckAddressValidationState implements SignupState {
  const factory CheckAddressValidationState(
          {required final String address,
          required final TextFieldValidation validation}) =
      _$CheckAddressValidationStateImpl;

  String get address;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckAddressValidationStateImplCopyWith<_$CheckAddressValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckNewPasswordValidationStateImplCopyWith<$Res> {
  factory _$$CheckNewPasswordValidationStateImplCopyWith(
          _$CheckNewPasswordValidationStateImpl value,
          $Res Function(_$CheckNewPasswordValidationStateImpl) then) =
      __$$CheckNewPasswordValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckNewPasswordValidationStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res,
        _$CheckNewPasswordValidationStateImpl>
    implements _$$CheckNewPasswordValidationStateImplCopyWith<$Res> {
  __$$CheckNewPasswordValidationStateImplCopyWithImpl(
      _$CheckNewPasswordValidationStateImpl _value,
      $Res Function(_$CheckNewPasswordValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? validation = null,
  }) {
    return _then(_$CheckNewPasswordValidationStateImpl(
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

class _$CheckNewPasswordValidationStateImpl
    implements CheckNewPasswordValidationState {
  const _$CheckNewPasswordValidationStateImpl(
      {required this.password, required this.validation});

  @override
  final String password;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'SignupState.checkNewPassword(password: $password, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckNewPasswordValidationStateImpl &&
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
  _$$CheckNewPasswordValidationStateImplCopyWith<
          _$CheckNewPasswordValidationStateImpl>
      get copyWith => __$$CheckNewPasswordValidationStateImplCopyWithImpl<
          _$CheckNewPasswordValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return checkNewPassword(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return checkNewPassword?.call(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkNewPassword != null) {
      return checkNewPassword(password, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return checkNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return checkNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkNewPassword != null) {
      return checkNewPassword(this);
    }
    return orElse();
  }
}

abstract class CheckNewPasswordValidationState implements SignupState {
  const factory CheckNewPasswordValidationState(
          {required final String password,
          required final TextFieldValidation validation}) =
      _$CheckNewPasswordValidationStateImpl;

  String get password;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckNewPasswordValidationStateImplCopyWith<
          _$CheckNewPasswordValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckConfirmPasswordValidationStateImplCopyWith<$Res> {
  factory _$$CheckConfirmPasswordValidationStateImplCopyWith(
          _$CheckConfirmPasswordValidationStateImpl value,
          $Res Function(_$CheckConfirmPasswordValidationStateImpl) then) =
      __$$CheckConfirmPasswordValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckConfirmPasswordValidationStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res,
        _$CheckConfirmPasswordValidationStateImpl>
    implements _$$CheckConfirmPasswordValidationStateImplCopyWith<$Res> {
  __$$CheckConfirmPasswordValidationStateImplCopyWithImpl(
      _$CheckConfirmPasswordValidationStateImpl _value,
      $Res Function(_$CheckConfirmPasswordValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
    Object? validation = null,
  }) {
    return _then(_$CheckConfirmPasswordValidationStateImpl(
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as TextFieldValidation,
    ));
  }
}

/// @nodoc

class _$CheckConfirmPasswordValidationStateImpl
    implements CheckConfirmPasswordValidationState {
  const _$CheckConfirmPasswordValidationStateImpl(
      {required this.confirmPassword, required this.validation});

  @override
  final String confirmPassword;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'SignupState.checkConfirmPassword(confirmPassword: $confirmPassword, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckConfirmPasswordValidationStateImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckConfirmPasswordValidationStateImplCopyWith<
          _$CheckConfirmPasswordValidationStateImpl>
      get copyWith => __$$CheckConfirmPasswordValidationStateImplCopyWithImpl<
          _$CheckConfirmPasswordValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return checkConfirmPassword(confirmPassword, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return checkConfirmPassword?.call(confirmPassword, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkConfirmPassword != null) {
      return checkConfirmPassword(confirmPassword, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return checkConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return checkConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (checkConfirmPassword != null) {
      return checkConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class CheckConfirmPasswordValidationState implements SignupState {
  const factory CheckConfirmPasswordValidationState(
          {required final String confirmPassword,
          required final TextFieldValidation validation}) =
      _$CheckConfirmPasswordValidationStateImpl;

  String get confirmPassword;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckConfirmPasswordValidationStateImplCopyWith<
          _$CheckConfirmPasswordValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpLoadingStateImplCopyWith<$Res> {
  factory _$$SignUpLoadingStateImplCopyWith(_$SignUpLoadingStateImpl value,
          $Res Function(_$SignUpLoadingStateImpl) then) =
      __$$SignUpLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpLoadingStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignUpLoadingStateImpl>
    implements _$$SignUpLoadingStateImplCopyWith<$Res> {
  __$$SignUpLoadingStateImplCopyWithImpl(_$SignUpLoadingStateImpl _value,
      $Res Function(_$SignUpLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpLoadingStateImpl implements SignUpLoadingState {
  const _$SignUpLoadingStateImpl();

  @override
  String toString() {
    return 'SignupState.signUpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoadingState implements SignupState {
  const factory SignUpLoadingState() = _$SignUpLoadingStateImpl;
}

/// @nodoc
abstract class _$$SignUpErrorStateImplCopyWith<$Res> {
  factory _$$SignUpErrorStateImplCopyWith(_$SignUpErrorStateImpl value,
          $Res Function(_$SignUpErrorStateImpl) then) =
      __$$SignUpErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$SignUpErrorStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignUpErrorStateImpl>
    implements _$$SignUpErrorStateImplCopyWith<$Res> {
  __$$SignUpErrorStateImplCopyWithImpl(_$SignUpErrorStateImpl _value,
      $Res Function(_$SignUpErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$SignUpErrorStateImpl(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpErrorStateImpl implements SignUpErrorState {
  const _$SignUpErrorStateImpl({required this.errMsg});

  @override
  final String errMsg;

  @override
  String toString() {
    return 'SignupState.signUpError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpErrorStateImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorStateImplCopyWith<_$SignUpErrorStateImpl> get copyWith =>
      __$$SignUpErrorStateImplCopyWithImpl<_$SignUpErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return signUpError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return signUpError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }
}

abstract class SignUpErrorState implements SignupState {
  const factory SignUpErrorState({required final String errMsg}) =
      _$SignUpErrorStateImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$SignUpErrorStateImplCopyWith<_$SignUpErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpSuccessStateImplCopyWith<$Res> {
  factory _$$SignUpSuccessStateImplCopyWith(_$SignUpSuccessStateImpl value,
          $Res Function(_$SignUpSuccessStateImpl) then) =
      __$$SignUpSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMsg});
}

/// @nodoc
class __$$SignUpSuccessStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignUpSuccessStateImpl>
    implements _$$SignUpSuccessStateImplCopyWith<$Res> {
  __$$SignUpSuccessStateImplCopyWithImpl(_$SignUpSuccessStateImpl _value,
      $Res Function(_$SignUpSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_$SignUpSuccessStateImpl(
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessStateImpl implements SignUpSuccessState {
  const _$SignUpSuccessStateImpl({required this.successMsg});

  @override
  final String successMsg;

  @override
  String toString() {
    return 'SignupState.signUpSuccess(successMsg: $successMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessStateImpl &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessStateImplCopyWith<_$SignUpSuccessStateImpl> get copyWith =>
      __$$SignUpSuccessStateImplCopyWithImpl<_$SignUpSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return signUpSuccess(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return signUpSuccess?.call(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(successMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessState implements SignupState {
  const factory SignUpSuccessState({required final String successMsg}) =
      _$SignUpSuccessStateImpl;

  String get successMsg;
  @JsonKey(ignore: true)
  _$$SignUpSuccessStateImplCopyWith<_$SignUpSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPLoadingStateImplCopyWith<$Res> {
  factory _$$VerifyOTPLoadingStateImplCopyWith(
          _$VerifyOTPLoadingStateImpl value,
          $Res Function(_$VerifyOTPLoadingStateImpl) then) =
      __$$VerifyOTPLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOTPLoadingStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOTPLoadingStateImpl>
    implements _$$VerifyOTPLoadingStateImplCopyWith<$Res> {
  __$$VerifyOTPLoadingStateImplCopyWithImpl(_$VerifyOTPLoadingStateImpl _value,
      $Res Function(_$VerifyOTPLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyOTPLoadingStateImpl implements VerifyOTPLoadingState {
  const _$VerifyOTPLoadingStateImpl();

  @override
  String toString() {
    return 'SignupState.verifyOTPLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return verifyOTPLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return verifyOTPLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPLoading != null) {
      return verifyOTPLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return verifyOTPLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return verifyOTPLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPLoading != null) {
      return verifyOTPLoading(this);
    }
    return orElse();
  }
}

abstract class VerifyOTPLoadingState implements SignupState {
  const factory VerifyOTPLoadingState() = _$VerifyOTPLoadingStateImpl;
}

/// @nodoc
abstract class _$$VerifyOTPErrorStateImplCopyWith<$Res> {
  factory _$$VerifyOTPErrorStateImplCopyWith(_$VerifyOTPErrorStateImpl value,
          $Res Function(_$VerifyOTPErrorStateImpl) then) =
      __$$VerifyOTPErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$VerifyOTPErrorStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOTPErrorStateImpl>
    implements _$$VerifyOTPErrorStateImplCopyWith<$Res> {
  __$$VerifyOTPErrorStateImplCopyWithImpl(_$VerifyOTPErrorStateImpl _value,
      $Res Function(_$VerifyOTPErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$VerifyOTPErrorStateImpl(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPErrorStateImpl implements VerifyOTPErrorState {
  const _$VerifyOTPErrorStateImpl({required this.errMsg});

  @override
  final String errMsg;

  @override
  String toString() {
    return 'SignupState.verifyOTPError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPErrorStateImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPErrorStateImplCopyWith<_$VerifyOTPErrorStateImpl> get copyWith =>
      __$$VerifyOTPErrorStateImplCopyWithImpl<_$VerifyOTPErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return verifyOTPError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return verifyOTPError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPError != null) {
      return verifyOTPError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return verifyOTPError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return verifyOTPError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPError != null) {
      return verifyOTPError(this);
    }
    return orElse();
  }
}

abstract class VerifyOTPErrorState implements SignupState {
  const factory VerifyOTPErrorState({required final String errMsg}) =
      _$VerifyOTPErrorStateImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$VerifyOTPErrorStateImplCopyWith<_$VerifyOTPErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPSuccessStateImplCopyWith<$Res> {
  factory _$$VerifyOTPSuccessStateImplCopyWith(
          _$VerifyOTPSuccessStateImpl value,
          $Res Function(_$VerifyOTPSuccessStateImpl) then) =
      __$$VerifyOTPSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMsg});
}

/// @nodoc
class __$$VerifyOTPSuccessStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOTPSuccessStateImpl>
    implements _$$VerifyOTPSuccessStateImplCopyWith<$Res> {
  __$$VerifyOTPSuccessStateImplCopyWithImpl(_$VerifyOTPSuccessStateImpl _value,
      $Res Function(_$VerifyOTPSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_$VerifyOTPSuccessStateImpl(
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPSuccessStateImpl implements VerifyOTPSuccessState {
  const _$VerifyOTPSuccessStateImpl({required this.successMsg});

  @override
  final String successMsg;

  @override
  String toString() {
    return 'SignupState.verifyOTPSuccess(successMsg: $successMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPSuccessStateImpl &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPSuccessStateImplCopyWith<_$VerifyOTPSuccessStateImpl>
      get copyWith => __$$VerifyOTPSuccessStateImplCopyWithImpl<
          _$VerifyOTPSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, TextFieldValidation validation)
        checkName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkNewPassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkConfirmPassword,
    required TResult Function() signUpLoading,
    required TResult Function(String errMsg) signUpError,
    required TResult Function(String successMsg) signUpSuccess,
    required TResult Function() verifyOTPLoading,
    required TResult Function(String errMsg) verifyOTPError,
    required TResult Function(String successMsg) verifyOTPSuccess,
  }) {
    return verifyOTPSuccess(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String name, TextFieldValidation validation)? checkName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult? Function()? signUpLoading,
    TResult? Function(String errMsg)? signUpError,
    TResult? Function(String successMsg)? signUpSuccess,
    TResult? Function()? verifyOTPLoading,
    TResult? Function(String errMsg)? verifyOTPError,
    TResult? Function(String successMsg)? verifyOTPSuccess,
  }) {
    return verifyOTPSuccess?.call(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, TextFieldValidation validation)? checkName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkNewPassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkConfirmPassword,
    TResult Function()? signUpLoading,
    TResult Function(String errMsg)? signUpError,
    TResult Function(String successMsg)? signUpSuccess,
    TResult Function()? verifyOTPLoading,
    TResult Function(String errMsg)? verifyOTPError,
    TResult Function(String successMsg)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPSuccess != null) {
      return verifyOTPSuccess(successMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckNameValidationState value) checkName,
    required TResult Function(CheckEmailValidationState value) checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckNewPasswordValidationState value)
        checkNewPassword,
    required TResult Function(CheckConfirmPasswordValidationState value)
        checkConfirmPassword,
    required TResult Function(SignUpLoadingState value) signUpLoading,
    required TResult Function(SignUpErrorState value) signUpError,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(VerifyOTPLoadingState value) verifyOTPLoading,
    required TResult Function(VerifyOTPErrorState value) verifyOTPError,
    required TResult Function(VerifyOTPSuccessState value) verifyOTPSuccess,
  }) {
    return verifyOTPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckNameValidationState value)? checkName,
    TResult? Function(CheckEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult? Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult? Function(SignUpLoadingState value)? signUpLoading,
    TResult? Function(SignUpErrorState value)? signUpError,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult? Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult? Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
  }) {
    return verifyOTPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckNameValidationState value)? checkName,
    TResult Function(CheckEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckNewPasswordValidationState value)? checkNewPassword,
    TResult Function(CheckConfirmPasswordValidationState value)?
        checkConfirmPassword,
    TResult Function(SignUpLoadingState value)? signUpLoading,
    TResult Function(SignUpErrorState value)? signUpError,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(VerifyOTPLoadingState value)? verifyOTPLoading,
    TResult Function(VerifyOTPErrorState value)? verifyOTPError,
    TResult Function(VerifyOTPSuccessState value)? verifyOTPSuccess,
    required TResult orElse(),
  }) {
    if (verifyOTPSuccess != null) {
      return verifyOTPSuccess(this);
    }
    return orElse();
  }
}

abstract class VerifyOTPSuccessState implements SignupState {
  const factory VerifyOTPSuccessState({required final String successMsg}) =
      _$VerifyOTPSuccessStateImpl;

  String get successMsg;
  @JsonKey(ignore: true)
  _$$VerifyOTPSuccessStateImplCopyWith<_$VerifyOTPSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
