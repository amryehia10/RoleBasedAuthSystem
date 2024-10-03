import 'package:dio/dio.dart';
import 'package:role_based_auth_system/core/services/dio_helper.dart';

class UserService {
   Future<Response> getUsers() async {
    try {
      Response response = await DioHelper.getData(
        endpoint: 'v1/users/'
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

   Future<Response> deleteUser({required int id}) async {
    try {
      Response response = await DioHelper.deleteData(
        endpoint: 'v1/users/$id'
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

   Future<Response> updateUser({
    required String name, 
    required String address, 
    required String password, 
    required String email,
    required String role,
    required int id
    }) async {
    try {
      Response response = await DioHelper.putData(
        endpoint: 'v1/users/$id',
        body: {
          "name": name,
          "address": address,
          "email": email,
          "role": role,
          "password": password
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Response> addUser({
    required String name, 
    required String address, 
    required String password, 
    required String email,
    required String role,
    }) async {
    try {
      Response response = await DioHelper.postData(
        endpoint: 'v1/users',
        body: {
          "name": name,
          "address": address,
          "email": email,
          "role": role,
          "password": password
        }
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }
}