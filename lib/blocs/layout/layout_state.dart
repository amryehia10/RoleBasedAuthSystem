part of 'layout_cubit.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState.initial() = _Initial;
  const factory LayoutState.changeNavBarIndex(final int index) = ChangeNavBarIndexState;
  const factory LayoutState.logoutSuccess() = LogoutSuccess;
  const factory LayoutState.logoutError(final String msg) = LogoutError;
  const factory LayoutState.logoutLoading() = LogoutLoading;
}