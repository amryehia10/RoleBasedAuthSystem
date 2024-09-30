import 'package:role_based_auth_system/models/user_model.dart';

class AuthRepository {
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
    ];
}