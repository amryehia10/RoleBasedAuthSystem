class UserModel {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String profileImageUrl;
  int role;

  UserModel({
    required this.id, 
    required this.name, 
    required this.email, 
    required this.phoneNumber, 
    required this.profileImageUrl,
    required this.role,
  });
}