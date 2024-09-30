import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/signup/signup_cubit.dart';
import 'package:role_based_auth_system/core/routing/routes.dart';
import 'package:role_based_auth_system/presentation/auth/signup/create_new_password_screen.dart';
import 'package:role_based_auth_system/presentation/auth/signup/otp_screen.dart';
import 'package:role_based_auth_system/presentation/auth/signup/signup_screen.dart';

import '../../blocs/layout/layout_cubit.dart';
import '../../blocs/login/login_cubit.dart';
import '../../presentation/auth/login/login_screen.dart';
import '../../presentation/layout/layout_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext, dynamic)> _routes = {
    Routes.layoutScreen: (context, _) => BlocProvider<LayoutCubit>(
          create: (context) => getIt<LayoutCubit>(),
          child: const LayoutScreen(),
        ),
    Routes.loginScreen: (context, arguments) => BlocProvider<LoginCubit>(
        create: (context) => getIt<LoginCubit>(), child: const LoginScreen()),
    Routes.signupScreen: (context, arguments) => BlocProvider<SignupCubit>(
        create: (context) => getIt<SignupCubit>(), child: const SignupScreen()),
    Routes.otpScreen: (context, arguments) {
      return BlocProvider.value(
        value: (arguments as SignupCubit),
        child: const OtpScreen(),
      );
    },
    Routes.createNewPasswordScreen: (context, arguments) {
      return BlocProvider.value(
        value: (arguments as SignupCubit),
        child: const CreateNewPassword(),
      );
    },
  };

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    final routeBuilder = _routes[settings.name];

    if (routeBuilder != null) {
      return MaterialPageRoute(
        builder: (context) {
          return routeBuilder(context, arguments);
        },
      );
    } else {
      return null;
    }
  }
}
