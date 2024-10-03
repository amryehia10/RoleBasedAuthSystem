import 'package:role_based_auth_system/core/services/local/storage_service.dart';
import 'package:role_based_auth_system/models/user_model.dart';

Future<UserModel?> getUserData() async {
  UserModel? user;
  try {
    final jsonMap = await StorageService.getModelData('userData',);

    if (jsonMap != null) {
      user = UserModel.fromJson(jsonMap);
    }
  } catch (err) {
    user = null;
  }
  return user;
}