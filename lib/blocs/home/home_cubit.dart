import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/models/user_model.dart';

part 'home_cubit_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeCubitState>{
  final AuthRepository _authRepository;
  Map<String, int> roleIndex = {};
  
  HomeCubit(this._authRepository,) : super(const HomeCubitState.initial());
  void onInit() {
    try {
      for (UserModel user in _authRepository.users) {
        roleIndex[user.id] = user.role;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void changeRoleIndexValue(int index, String id) {
    roleIndex[id] = index;
    emit(HomeCubitState.changeRoleIndex(
        roleIndexValue: getRoleIndex(id), id: id));
  }

  int getRoleIndex(String id) {
    return roleIndex[id] ?? 0;
  }
}