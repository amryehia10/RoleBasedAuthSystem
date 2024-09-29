// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int roleIndexValue, String id) changeRoleIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue, String id)? changeRoleIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue, String id)? changeRoleIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCubitStateCopyWith<$Res> {
  factory $HomeCubitStateCopyWith(
          HomeCubitState value, $Res Function(HomeCubitState) then) =
      _$HomeCubitStateCopyWithImpl<$Res, HomeCubitState>;
}

/// @nodoc
class _$HomeCubitStateCopyWithImpl<$Res, $Val extends HomeCubitState>
    implements $HomeCubitStateCopyWith<$Res> {
  _$HomeCubitStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeCubitStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeCubitState.initial()';
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
    required TResult Function(int roleIndexValue, String id) changeRoleIndex,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue, String id)? changeRoleIndex,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue, String id)? changeRoleIndex,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeCubitState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeRoleIndexStateImplCopyWith<$Res> {
  factory _$$ChangeRoleIndexStateImplCopyWith(_$ChangeRoleIndexStateImpl value,
          $Res Function(_$ChangeRoleIndexStateImpl) then) =
      __$$ChangeRoleIndexStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roleIndexValue, String id});
}

/// @nodoc
class __$$ChangeRoleIndexStateImplCopyWithImpl<$Res>
    extends _$HomeCubitStateCopyWithImpl<$Res, _$ChangeRoleIndexStateImpl>
    implements _$$ChangeRoleIndexStateImplCopyWith<$Res> {
  __$$ChangeRoleIndexStateImplCopyWithImpl(_$ChangeRoleIndexStateImpl _value,
      $Res Function(_$ChangeRoleIndexStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleIndexValue = null,
    Object? id = null,
  }) {
    return _then(_$ChangeRoleIndexStateImpl(
      roleIndexValue: null == roleIndexValue
          ? _value.roleIndexValue
          : roleIndexValue // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeRoleIndexStateImpl implements ChangeRoleIndexState {
  const _$ChangeRoleIndexStateImpl(
      {required this.roleIndexValue, required this.id});

  @override
  final int roleIndexValue;
  @override
  final String id;

  @override
  String toString() {
    return 'HomeCubitState.changeRoleIndex(roleIndexValue: $roleIndexValue, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRoleIndexStateImpl &&
            (identical(other.roleIndexValue, roleIndexValue) ||
                other.roleIndexValue == roleIndexValue) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleIndexValue, id);

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
    required TResult Function(int roleIndexValue, String id) changeRoleIndex,
  }) {
    return changeRoleIndex(roleIndexValue, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int roleIndexValue, String id)? changeRoleIndex,
  }) {
    return changeRoleIndex?.call(roleIndexValue, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int roleIndexValue, String id)? changeRoleIndex,
    required TResult orElse(),
  }) {
    if (changeRoleIndex != null) {
      return changeRoleIndex(roleIndexValue, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeRoleIndexState value) changeRoleIndex,
  }) {
    return changeRoleIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeRoleIndexState value)? changeRoleIndex,
  }) {
    return changeRoleIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeRoleIndexState value)? changeRoleIndex,
    required TResult orElse(),
  }) {
    if (changeRoleIndex != null) {
      return changeRoleIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeRoleIndexState implements HomeCubitState {
  const factory ChangeRoleIndexState(
      {required final int roleIndexValue,
      required final String id}) = _$ChangeRoleIndexStateImpl;

  int get roleIndexValue;
  String get id;
  @JsonKey(ignore: true)
  _$$ChangeRoleIndexStateImplCopyWith<_$ChangeRoleIndexStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
