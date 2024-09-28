import 'package:role_based_auth_system/core/services/local/storage_service.dart';

class UserTokenService {
  static const String _tokenKey = 'userToken';
  static String _userToken = '';

  static Future<void> saveUserToken(String token) async {
    _userToken = token;
    await StorageService.saveData(_tokenKey, token);
  }

  static Future<String?> getUserToken() async {
    return await StorageService.getData(_tokenKey);
  }

  static void userTokenFirstTime() async =>
      _userToken = await getUserToken() ?? "";

  static Future<void> deleteUserToken() async {
    _userToken = "";
    currentUserToken;
    await StorageService.deleteData(_tokenKey);
  }

  static String get currentUserToken => _userToken;
}
