import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

class LayoutCubit extends Cubit<LayoutState>{
  AuthRepository _authRepository;
  LayoutCubit(this._authRepository) : super(const LayoutState.initial());
  late int navBarIndex;

  void init() {
    navBarIndex = _authRepository.user.role == 'Admin' ? 0 : 1;
  }

  void changeNavBarIndex(int newIndex) {
    navBarIndex = newIndex;
    emit(LayoutState.changeNavBarIndex(navBarIndex));
  }

  
  void logout() async {
    emit(const LayoutState.logoutLoading());
    try {
      await _authRepository.clearCustomerData();
      emit(const LayoutState.logoutSuccess());
    } catch (e) {
      emit(LayoutState.logoutError(e.toString()));
    }
  }
}