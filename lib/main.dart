import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:role_based_auth_system/app.dart';
import 'package:role_based_auth_system/bloc_observe.dart';
import 'package:role_based_auth_system/core/di/dependency_injection.dart';
import 'package:role_based_auth_system/core/routing/app_router.dart';

Future<void> main() async {
  await setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    )
  );
}