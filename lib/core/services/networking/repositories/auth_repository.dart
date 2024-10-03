import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:role_based_auth_system/core/services/local/storage_service.dart';
import 'package:role_based_auth_system/core/services/local/token_service.dart';
import 'package:role_based_auth_system/core/services/networking/api_services/auth_service.dart';
import 'package:role_based_auth_system/models/user_model.dart';

class AuthRepository {
  final AuthService _authService;
  
  AuthRepository(
    this._authService,
  );

  UserModel user = UserModel.empty();

  void init(
    UserModel? cachedUser,
  ) {
    if (cachedUser != null) {
      user = cachedUser;
    }
  }


  void setUserData(UserModel? cachedUser) {
    if (cachedUser != null) {
      user = cachedUser;
      UserTokenService.saveUserToken(user.token);
      UserTokenService.userTokenFirstTime();
    }
  }

  Future<void> clearCustomerData() async {
    user = UserModel.empty();
    UserTokenService.deleteUserToken();
    StorageService.deleteAllData();
  }


  Future<Either<String, String>> signup({
    required String name,
    required String email,
    required String address
  }) async {
    try {
      final response = await _authService.signUp(
        email: email,
        name: name,
        address: address
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, String>> verifyOtp({
    required String email,
    required String otp
  }) async {
    try {
      final response = await _authService.verifyOtp(
        email: email,
        otp: otp,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, String>> resetPassword({
    required String email,
    required String otp,
    required String password
  }) async {
    try {
      final response = await _authService.resetPassword(
        email: email,
        otp: otp,
        password: password
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  
  Future<Either<String, String>> forgetPassword({
    required String email,
  }) async {
    try {
      final response = await _authService.forgetPassword(
        email: email,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> login({
    required String email,
    required String password,
  }) async {
      try {
      final response = await _authService.login(
        email: email,
        password: password,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        UserModel user = UserModel.fromJson(response.data);
        UserTokenService.saveUserToken(user.token);
        StorageService.saveData(
          "userData",
          json.encode(user.toJson()),
        );
        return Right(user);
      } else {
        return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}