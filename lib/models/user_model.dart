class UserModel {
  final int id;
  String name;
  String email;
  String address;
  String role;
  final bool verified;
  final String token;

  UserModel({
    required this.id, 
    required this.name, 
    required this.email, 
    required this.role,
    required this.token,
    required this.verified,
    required this.address
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["user"]["id"],
      name: json["user"]['name'] ?? "",
      email: json["user"]['email'] ?? "",
      token: json['accessToken'] ?? "",
      role: json["user"]['role'] ?? "",
      verified: json["user"]['verified'] ?? false,
      address: json["user"]['address']?? "",
    );
  }

  factory UserModel.getUsers(Map<String, dynamic> json) =>
    UserModel(
      id: json['id'],
      name: json['name'] ?? "",
      email: json['email'] ?? "",
      token: json['accessToken'] ?? "",
      role: json['role'] ?? "",
      verified: json['verified'] ?? false,
      address: json['address']?? "",
  );

  UserModel.empty()
    : name = '',
      id = -1,
      email = "",
      token = '',
      role = '',
      address = '',
      verified = false;

  Map<String, dynamic> toJson() => {
      'accessToken': token,
      "user": {
        "id": id,
        "email": email,
        'address': address,
        'role': role,
        'verified' : verified,
        "name": name
      },
    };
}