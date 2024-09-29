part of 'home_cubit.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.initial() = _Initial;

  const factory HomeCubitState.changeRoleIndex({
    required int roleIndexValue,
    required String id,
  }) = ChangeRoleIndexState;
}