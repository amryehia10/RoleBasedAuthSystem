import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/core/di/dependency_injection.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/routing/app_router.dart';
import 'package:role_based_auth_system/core/routing/routes.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';

import 'core/theming/colors.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: getIt<AuthRepository>(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: child!,
          );
        },
        theme: ThemeData(
          fontFamily: "Inter",
          scaffoldBackgroundColor: AppColors.grey500,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryBlue,
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}