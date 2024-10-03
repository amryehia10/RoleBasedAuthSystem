import 'package:get_it/get_it.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/blocs/layout/layout_cubit.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/services/networking/api_services/auth_service.dart';
import 'package:role_based_auth_system/core/services/networking/api_services/user_service.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/user_repository.dart';

import '../../blocs/login/login_cubit.dart';
import '../services/networking/repositories/auth_repository.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<UserService>(() => UserService());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt<AuthService>()));
  getIt.registerLazySingleton<UserRepository>(() => UserRepository(getIt<UserService>()));


  getIt.registerFactory<LayoutCubit>(() => LayoutCubit(getIt<AuthRepository>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<AuthRepository>(), getIt<UserRepository>()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt<UserRepository>(), getIt<AuthRepository>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepository>(),));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepository>(),),);
}