import 'package:either_dart/either.dart';
import 'package:role_based_auth_system/core/services/networking/api_services/user_service.dart';
import 'package:role_based_auth_system/models/user_model.dart';

class UserRepository {
  final UserService _userService;
  List<UserModel> users = [];
  UserRepository(this._userService);

   Future<Either<String, List<UserModel>>> getUsers() async {
    try {
      final response = await _userService.getUsers();
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<UserModel> usersData = (response.data as List)
          .map((user){
            return (UserModel.getUsers(user));
          })
          .toList();
        users = usersData;
        return Right(users); 
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, String>> deleteUser({required int id}) async {
    try {
      final response = await _userService.deleteUser(id: id);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']); 
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> updateUser({
    required String name, 
    required String address, 
    required String password, 
    required String email,
    required String role,
    required int id
  }) async {
    try {
      final response = await _userService.updateUser(
        name: name,
        address: address,
        password: password,
        role: role,
        id: id,
        email: email
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        UserModel user = UserModel.getUsers(response.data);
        return Right(user); 
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

    Future<Either<String, UserModel>> addUser({
    required String name, 
    required String address, 
    required String password, 
    required String email,
    required String role,
  }) async {
    try {
      final response = await _userService.addUser(
        name: name,
        address: address,
        password: password,
        role: role,
        email: email
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        UserModel user = UserModel.getUsers(response.data);
        return Right(user); 
      } else {
         return Left(response.data['message']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}