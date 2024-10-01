import 'package:either_dart/either.dart';
import 'package:role_based_auth_system/core/services/networking/api_services/auth_service.dart';
import 'package:role_based_auth_system/models/user_model.dart';

class AuthRepository {
  final AuthService _authService;
  
  AuthRepository(
    this._authService,
  );

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

   List<UserModel> users = [
      UserModel(
        id: '1',
        role: 0, //admin
        name: 'John Doe',
        email: 'john.doe@example.com',
        phoneNumber: '+1234567890',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '2',
        role: 1,  //user
        name: 'Jane Smith',
        email: 'jane.smith@example.com',
        phoneNumber: '+0987654321',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '3',
        role: 1,
        name: 'Robert Johnson',
        email: 'robert.johnson@example.com',
        phoneNumber: '+1122334455',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '4',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '5',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '6',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '7',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '8',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
      UserModel(
        id: '9',
        role: 0,
        name: 'Emily Davis',
        email: 'emily.davis@example.com',
        phoneNumber: '+1223344556',
        profileImageUrl: 'assets/images/profileImage.png',
      ),
    ];
}