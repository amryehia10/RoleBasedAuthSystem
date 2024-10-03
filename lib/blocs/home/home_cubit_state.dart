part of 'home_cubit.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.initial() = _Initial;

  const factory HomeCubitState.getUsersLoading() = GetUsersLoading;
  const factory HomeCubitState.getUsersError(final String msg) = GetUsersError;
  const factory HomeCubitState.getUsersSuccess() = GetUsersSuccesss;

  const factory HomeCubitState.deleteUsersLoading() = DeleteUsersLoading;
  const factory HomeCubitState.deleteUsersError(final String msg) = DeleteUsersError;
  const factory HomeCubitState.deleteUsersSuccess(final String msg) = DeleteUsersSuccesss;
}