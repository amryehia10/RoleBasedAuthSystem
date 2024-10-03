// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProfileState.initial()';
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
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
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
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeRoleIndexStateImplCopyWith<$Res> {
  factory _$$ChangeRoleIndexStateImplCopyWith(_$ChangeRoleIndexStateImpl value,
          $Res Function(_$ChangeRoleIndexStateImpl) then) =
      __$$ChangeRoleIndexStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roleIndexValue});
}

/// @nodoc
class __$$ChangeRoleIndexStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ChangeRoleIndexStateImpl>
    implements _$$ChangeRoleIndexStateImplCopyWith<$Res> {
  __$$ChangeRoleIndexStateImplCopyWithImpl(_$ChangeRoleIndexStateImpl _value,
      $Res Function(_$ChangeRoleIndexStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleIndexValue = null,
  }) {
    return _then(_$ChangeRoleIndexStateImpl(
      roleIndexValue: null == roleIndexValue
          ? _value.roleIndexValue
          : roleIndexValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeRoleIndexStateImpl implements ChangeRoleIndexState {
  const _$ChangeRoleIndexStateImpl({required this.roleIndexValue});

  @override
  final int roleIndexValue;

  @override
  String toString() {
    return 'ProfileState.changeRoleIndex(roleIndexValue: $roleIndexValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRoleIndexStateImpl &&
            (identical(other.roleIndexValue, roleIndexValue) ||
                other.roleIndexValue == roleIndexValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleIndexValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRoleIndexStateImplCopyWith<_$ChangeRoleIndexStateImpl>
      get copyWith =>
          __$$ChangeRoleIndexStateImplCopyWithImpl<_$ChangeRoleIndexStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return changeRoleIndex(roleIndexValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return changeRoleIndex?.call(roleIndexValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (changeRoleIndex != null) {
      return changeRoleIndex(roleIndexValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return changeRoleIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return changeRoleIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (changeRoleIndex != null) {
      return changeRoleIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeRoleIndexState implements ProfileState {
  const factory ChangeRoleIndexState({required final int roleIndexValue}) =
      _$ChangeRoleIndexStateImpl;

  int get roleIndexValue;
  @JsonKey(ignore: true)
  _$$ChangeRoleIndexStateImplCopyWith<_$ChangeRoleIndexStateImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ProfileStateCopyWithImpl<$Res, _$CheckNameValidationStateImpl>
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
    return 'ProfileState.checkProfileName(name: $name, validation: $validation)';
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
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return checkProfileName(name, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return checkProfileName?.call(name, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfileName != null) {
      return checkProfileName(name, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return checkProfileName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return checkProfileName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfileName != null) {
      return checkProfileName(this);
    }
    return orElse();
  }
}

abstract class CheckNameValidationState implements ProfileState {
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
abstract class _$$CheckProfileEmailValidationStateImplCopyWith<$Res> {
  factory _$$CheckProfileEmailValidationStateImplCopyWith(
          _$CheckProfileEmailValidationStateImpl value,
          $Res Function(_$CheckProfileEmailValidationStateImpl) then) =
      __$$CheckProfileEmailValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckProfileEmailValidationStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$CheckProfileEmailValidationStateImpl>
    implements _$$CheckProfileEmailValidationStateImplCopyWith<$Res> {
  __$$CheckProfileEmailValidationStateImplCopyWithImpl(
      _$CheckProfileEmailValidationStateImpl _value,
      $Res Function(_$CheckProfileEmailValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? validation = null,
  }) {
    return _then(_$CheckProfileEmailValidationStateImpl(
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

class _$CheckProfileEmailValidationStateImpl
    implements CheckProfileEmailValidationState {
  const _$CheckProfileEmailValidationStateImpl(
      {required this.email, required this.validation});

  @override
  final String email;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'ProfileState.checkEmail(email: $email, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProfileEmailValidationStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckProfileEmailValidationStateImplCopyWith<
          _$CheckProfileEmailValidationStateImpl>
      get copyWith => __$$CheckProfileEmailValidationStateImplCopyWithImpl<
          _$CheckProfileEmailValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return checkEmail(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return checkEmail?.call(email, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
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
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return checkEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return checkEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(this);
    }
    return orElse();
  }
}

abstract class CheckProfileEmailValidationState implements ProfileState {
  const factory CheckProfileEmailValidationState(
          {required final String email,
          required final TextFieldValidation validation}) =
      _$CheckProfileEmailValidationStateImpl;

  String get email;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckProfileEmailValidationStateImplCopyWith<
          _$CheckProfileEmailValidationStateImpl>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$CheckAddressValidationStateImpl>
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
    return 'ProfileState.checkAddress(address: $address, validation: $validation)';
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
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return checkAddress(address, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return checkAddress?.call(address, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
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
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return checkAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return checkAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkAddress != null) {
      return checkAddress(this);
    }
    return orElse();
  }
}

abstract class CheckAddressValidationState implements ProfileState {
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
abstract class _$$CheckProfilePasswordValidationStateImplCopyWith<$Res> {
  factory _$$CheckProfilePasswordValidationStateImplCopyWith(
          _$CheckProfilePasswordValidationStateImpl value,
          $Res Function(_$CheckProfilePasswordValidationStateImpl) then) =
      __$$CheckProfilePasswordValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckProfilePasswordValidationStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$CheckProfilePasswordValidationStateImpl>
    implements _$$CheckProfilePasswordValidationStateImplCopyWith<$Res> {
  __$$CheckProfilePasswordValidationStateImplCopyWithImpl(
      _$CheckProfilePasswordValidationStateImpl _value,
      $Res Function(_$CheckProfilePasswordValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? validation = null,
  }) {
    return _then(_$CheckProfilePasswordValidationStateImpl(
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

class _$CheckProfilePasswordValidationStateImpl
    implements CheckProfilePasswordValidationState {
  const _$CheckProfilePasswordValidationStateImpl(
      {required this.password, required this.validation});

  @override
  final String password;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'ProfileState.checkProfilePassword(password: $password, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProfilePasswordValidationStateImpl &&
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
  _$$CheckProfilePasswordValidationStateImplCopyWith<
          _$CheckProfilePasswordValidationStateImpl>
      get copyWith => __$$CheckProfilePasswordValidationStateImplCopyWithImpl<
          _$CheckProfilePasswordValidationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return checkProfilePassword(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return checkProfilePassword?.call(password, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfilePassword != null) {
      return checkProfilePassword(password, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return checkProfilePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return checkProfilePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfilePassword != null) {
      return checkProfilePassword(this);
    }
    return orElse();
  }
}

abstract class CheckProfilePasswordValidationState implements ProfileState {
  const factory CheckProfilePasswordValidationState(
          {required final String password,
          required final TextFieldValidation validation}) =
      _$CheckProfilePasswordValidationStateImpl;

  String get password;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckProfilePasswordValidationStateImplCopyWith<
          _$CheckProfilePasswordValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckProfileConfirmPasswordValidationStateImplCopyWith<$Res> {
  factory _$$CheckProfileConfirmPasswordValidationStateImplCopyWith(
          _$CheckProfileConfirmPasswordValidationStateImpl value,
          $Res Function(_$CheckProfileConfirmPasswordValidationStateImpl)
              then) =
      __$$CheckProfileConfirmPasswordValidationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword, TextFieldValidation validation});
}

/// @nodoc
class __$$CheckProfileConfirmPasswordValidationStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$CheckProfileConfirmPasswordValidationStateImpl>
    implements _$$CheckProfileConfirmPasswordValidationStateImplCopyWith<$Res> {
  __$$CheckProfileConfirmPasswordValidationStateImplCopyWithImpl(
      _$CheckProfileConfirmPasswordValidationStateImpl _value,
      $Res Function(_$CheckProfileConfirmPasswordValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
    Object? validation = null,
  }) {
    return _then(_$CheckProfileConfirmPasswordValidationStateImpl(
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

class _$CheckProfileConfirmPasswordValidationStateImpl
    implements CheckProfileConfirmPasswordValidationState {
  const _$CheckProfileConfirmPasswordValidationStateImpl(
      {required this.confirmPassword, required this.validation});

  @override
  final String confirmPassword;
  @override
  final TextFieldValidation validation;

  @override
  String toString() {
    return 'ProfileState.checkProfileConfirmPassword(confirmPassword: $confirmPassword, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProfileConfirmPasswordValidationStateImpl &&
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
  _$$CheckProfileConfirmPasswordValidationStateImplCopyWith<
          _$CheckProfileConfirmPasswordValidationStateImpl>
      get copyWith =>
          __$$CheckProfileConfirmPasswordValidationStateImplCopyWithImpl<
                  _$CheckProfileConfirmPasswordValidationStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return checkProfileConfirmPassword(confirmPassword, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return checkProfileConfirmPassword?.call(confirmPassword, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfileConfirmPassword != null) {
      return checkProfileConfirmPassword(confirmPassword, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return checkProfileConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return checkProfileConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (checkProfileConfirmPassword != null) {
      return checkProfileConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class CheckProfileConfirmPasswordValidationState
    implements ProfileState {
  const factory CheckProfileConfirmPasswordValidationState(
          {required final String confirmPassword,
          required final TextFieldValidation validation}) =
      _$CheckProfileConfirmPasswordValidationStateImpl;

  String get confirmPassword;
  TextFieldValidation get validation;
  @JsonKey(ignore: true)
  _$$CheckProfileConfirmPasswordValidationStateImplCopyWith<
          _$CheckProfileConfirmPasswordValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserErrorImplCopyWith<$Res> {
  factory _$$UpdateUserErrorImplCopyWith(_$UpdateUserErrorImpl value,
          $Res Function(_$UpdateUserErrorImpl) then) =
      __$$UpdateUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$UpdateUserErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateUserErrorImpl>
    implements _$$UpdateUserErrorImplCopyWith<$Res> {
  __$$UpdateUserErrorImplCopyWithImpl(
      _$UpdateUserErrorImpl _value, $Res Function(_$UpdateUserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$UpdateUserErrorImpl(
      null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserErrorImpl implements UpdateUserError {
  const _$UpdateUserErrorImpl(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'ProfileState.updateUserError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserErrorImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserErrorImplCopyWith<_$UpdateUserErrorImpl> get copyWith =>
      __$$UpdateUserErrorImplCopyWithImpl<_$UpdateUserErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return updateUserError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return updateUserError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserError != null) {
      return updateUserError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return updateUserError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return updateUserError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserError != null) {
      return updateUserError(this);
    }
    return orElse();
  }
}

abstract class UpdateUserError implements ProfileState {
  const factory UpdateUserError(final String errMsg) = _$UpdateUserErrorImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$UpdateUserErrorImplCopyWith<_$UpdateUserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserSuccessImplCopyWith<$Res> {
  factory _$$UpdateUserSuccessImplCopyWith(_$UpdateUserSuccessImpl value,
          $Res Function(_$UpdateUserSuccessImpl) then) =
      __$$UpdateUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMsg});
}

/// @nodoc
class __$$UpdateUserSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateUserSuccessImpl>
    implements _$$UpdateUserSuccessImplCopyWith<$Res> {
  __$$UpdateUserSuccessImplCopyWithImpl(_$UpdateUserSuccessImpl _value,
      $Res Function(_$UpdateUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_$UpdateUserSuccessImpl(
      null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserSuccessImpl implements UpdateUserSuccess {
  const _$UpdateUserSuccessImpl(this.successMsg);

  @override
  final String successMsg;

  @override
  String toString() {
    return 'ProfileState.updateUserSuccess(successMsg: $successMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserSuccessImpl &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserSuccessImplCopyWith<_$UpdateUserSuccessImpl> get copyWith =>
      __$$UpdateUserSuccessImplCopyWithImpl<_$UpdateUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return updateUserSuccess(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return updateUserSuccess?.call(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserSuccess != null) {
      return updateUserSuccess(successMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return updateUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return updateUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserSuccess != null) {
      return updateUserSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateUserSuccess implements ProfileState {
  const factory UpdateUserSuccess(final String successMsg) =
      _$UpdateUserSuccessImpl;

  String get successMsg;
  @JsonKey(ignore: true)
  _$$UpdateUserSuccessImplCopyWith<_$UpdateUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserLoadingImplCopyWith<$Res> {
  factory _$$UpdateUserLoadingImplCopyWith(_$UpdateUserLoadingImpl value,
          $Res Function(_$UpdateUserLoadingImpl) then) =
      __$$UpdateUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateUserLoadingImpl>
    implements _$$UpdateUserLoadingImplCopyWith<$Res> {
  __$$UpdateUserLoadingImplCopyWithImpl(_$UpdateUserLoadingImpl _value,
      $Res Function(_$UpdateUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLoadingImpl implements UpdateUserLoading {
  const _$UpdateUserLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.updateUserLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue) changeRoleIndex,
    required TResult Function(String name, TextFieldValidation validation)
        checkProfileName,
    required TResult Function(String email, TextFieldValidation validation)
        checkEmail,
    required TResult Function(String address, TextFieldValidation validation)
        checkAddress,
    required TResult Function(String password, TextFieldValidation validation)
        checkProfilePassword,
    required TResult Function(
            String confirmPassword, TextFieldValidation validation)
        checkProfileConfirmPassword,
    required TResult Function(String errMsg) updateUserError,
    required TResult Function(String successMsg) updateUserSuccess,
    required TResult Function() updateUserLoading,
  }) {
    return updateUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue)? changeRoleIndex,
    TResult? Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult? Function(String email, TextFieldValidation validation)? checkEmail,
    TResult? Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult? Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult? Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult? Function(String errMsg)? updateUserError,
    TResult? Function(String successMsg)? updateUserSuccess,
    TResult? Function()? updateUserLoading,
  }) {
    return updateUserLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue)? changeRoleIndex,
    TResult Function(String name, TextFieldValidation validation)?
        checkProfileName,
    TResult Function(String email, TextFieldValidation validation)? checkEmail,
    TResult Function(String address, TextFieldValidation validation)?
        checkAddress,
    TResult Function(String password, TextFieldValidation validation)?
        checkProfilePassword,
    TResult Function(String confirmPassword, TextFieldValidation validation)?
        checkProfileConfirmPassword,
    TResult Function(String errMsg)? updateUserError,
    TResult Function(String successMsg)? updateUserSuccess,
    TResult Function()? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserLoading != null) {
      return updateUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
    required TResult Function(CheckNameValidationState value) checkProfileName,
    required TResult Function(CheckProfileEmailValidationState value)
        checkEmail,
    required TResult Function(CheckAddressValidationState value) checkAddress,
    required TResult Function(CheckProfilePasswordValidationState value)
        checkProfilePassword,
    required TResult Function(CheckProfileConfirmPasswordValidationState value)
        checkProfileConfirmPassword,
    required TResult Function(UpdateUserError value) updateUserError,
    required TResult Function(UpdateUserSuccess value) updateUserSuccess,
    required TResult Function(UpdateUserLoading value) updateUserLoading,
  }) {
    return updateUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult? Function(CheckNameValidationState value)? checkProfileName,
    TResult? Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult? Function(CheckAddressValidationState value)? checkAddress,
    TResult? Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult? Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult? Function(UpdateUserError value)? updateUserError,
    TResult? Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult? Function(UpdateUserLoading value)? updateUserLoading,
  }) {
    return updateUserLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    TResult Function(CheckNameValidationState value)? checkProfileName,
    TResult Function(CheckProfileEmailValidationState value)? checkEmail,
    TResult Function(CheckAddressValidationState value)? checkAddress,
    TResult Function(CheckProfilePasswordValidationState value)?
        checkProfilePassword,
    TResult Function(CheckProfileConfirmPasswordValidationState value)?
        checkProfileConfirmPassword,
    TResult Function(UpdateUserError value)? updateUserError,
    TResult Function(UpdateUserSuccess value)? updateUserSuccess,
    TResult Function(UpdateUserLoading value)? updateUserLoading,
    required TResult orElse(),
  }) {
    if (updateUserLoading != null) {
      return updateUserLoading(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLoading implements ProfileState {
  const factory UpdateUserLoading() = _$UpdateUserLoadingImpl;
}
