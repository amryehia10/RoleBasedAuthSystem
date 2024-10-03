import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/user_repository.dart';
import 'package:role_based_auth_system/models/user_model.dart';

part 'home_cubit_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeCubitState>{
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  List<UserModel> users = [];
  
  HomeCubit(this._authRepository, this._userRepository) : super(const HomeCubitState.initial());
  
  void onInit() {
    getUsers();
  }

  void getUsers() async {
    emit(const HomeCubitState.getUsersLoading());
    try {
      final res = await _userRepository.getUsers();
      res.fold((errMsg) {
          emit(HomeCubitState.getUsersError(errMsg));
      }, (usersData) async {
        users = usersData;
        emit(
          const HomeCubitState.getUsersSuccess(),
        );
      });
    } catch (e) {
      emit(HomeCubitState.getUsersError(e.toString()));
    }
  }

  void deleteUsers(int id) async {
    emit(const HomeCubitState.deleteUsersLoading());
    try {
      final res = await _userRepository.deleteUser(id: id);
      users.removeWhere((user) => user.id == id);
      res.fold((errMsg) {
          emit(HomeCubitState.deleteUsersError(errMsg));
      }, (msg) async {
        emit( HomeCubitState.deleteUsersSuccess(msg));
      });
    } catch (e) {
      emit(HomeCubitState.deleteUsersError(e.toString()));
    }
  }
}