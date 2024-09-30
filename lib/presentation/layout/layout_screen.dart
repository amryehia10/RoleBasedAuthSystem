import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/core/di/dependency_injection.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';
import 'package:role_based_auth_system/presentation/auth/login/login_screen.dart';

import '../../blocs/layout/layout_cubit.dart';
import '../../blocs/profile/profile_cubit.dart';
import '../../core/routing/routes.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      BlocProvider<HomeCubit>(
        create: (context) => getIt<HomeCubit>()..onInit(),
        child: const HomeScreen(),
      ),
      BlocProvider<ProfileCubit>(
        create: (context) => getIt<ProfileCubit>(),
        child: const ProfileScreen(),
      ),
    ];

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.grey500,
            title: Text(
              'Auth System',
              style: AppFonts.inter18Black500
                  .copyWith(color: AppColors.primaryBlue),
            ),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu, color: AppColors.gold),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            )),
        body: SizedBox(
          width: AppConstants.screenWidth(context),
          height: AppConstants.screenHeight(context),
          child: SafeArea(
            child: BlocBuilder<LayoutCubit, LayoutState>(
              builder: (context, state) {
                return screens[context.watch<LayoutCubit>().navBarIndex];
              },
            ),
          ),
        ),
        drawer: BlocBuilder<LayoutCubit, LayoutState>(
          buildWhen: (previous, current) => current is ChangeNavBarIndexState,
          builder: (context, state) {
            return const DrawerBar();
          },
        ));
  }
}

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            selected: context.watch<LayoutCubit>().navBarIndex == 0,
            onTap: () {
              context.read<LayoutCubit>().changeNavBarIndex(0);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Profile'),
            selected: context.watch<LayoutCubit>().navBarIndex == 1,
            onTap: () {
              context.read<LayoutCubit>().changeNavBarIndex(1);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Login'),
            selected: false,
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
