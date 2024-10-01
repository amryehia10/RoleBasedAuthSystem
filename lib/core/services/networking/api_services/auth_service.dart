import 'package:dio/dio.dart';
import 'package:role_based_auth_system/core/services/dio_helper.dart';

class AuthService {
  Future<Response> signUp({required String email, required String name, required String address}) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/auth/signup', 
        body: {
          "email": email,
          "name": name,
          "address": address
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
      
    }
  }

  Future<Response> login({required String email, required String password}) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/auth/login', 
        body: {
          "email": email,
          "password": password
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Response> verifyOtp({required String email, required String otp}) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/auth/verify-otp', 
        body: {
          "email": email,
          "otp": otp
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Response> resetPassword({required String email, required String otp, required String password}) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/auth/reset-password', 
        body: {
          "email": email,
          "otp": otp,
          'password': password
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Response> forgetPassword({required String email}) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/auth/forgot-password', 
        body: {
          "email": email,
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

   Future<Response> getUsers() async {
    try {
      Response response = await DioHelper.getData(
        endpoint: 'v1/auth/forgot-password'
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }
}