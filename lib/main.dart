import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:role_based_auth_system/app.dart';
import 'package:role_based_auth_system/bloc_observe.dart';
import 'package:role_based_auth_system/core/di/dependency_injection.dart';
import 'package:role_based_auth_system/core/helpers/functions.dart';
import 'package:role_based_auth_system/core/routing/app_router.dart';
import 'package:role_based_auth_system/core/services/dio_helper.dart';
import 'package:role_based_auth_system/core/services/local/cache_helper.dart';
import 'package:role_based_auth_system/core/services/local/token_service.dart';
import 'package:role_based_auth_system/models/user_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await DioHelper.init('https://role-based-authenticator.onrender.com/');
  await Future.wait([
    CacheHelper.init(),
  ]);
  final UserModel? cacheduser = await getUserData();
  if(cacheduser != null) {
    print("caaaaache $cacheduser");
    UserTokenService.saveUserToken(cacheduser.token);
  }
  Bloc.observer = MyBlocObserver();
  runApp(
    MyApp(
      appRouter: AppRouter(),
      user: cacheduser,
    )
  );
}