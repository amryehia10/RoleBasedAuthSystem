import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/core/di/dependency_injection.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/services/networking/repositories/auth_repository.dart';
import 'package:role_based_auth_system/core/theming/colors.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';
import 'package:role_based_auth_system/core/widgets/default_dialog.dart';
import 'package:role_based_auth_system/core/widgets/snackbar.dart';
import 'package:role_based_auth_system/presentation/layout/profile/add_new_user_screen.dart';
import '../../blocs/layout/layout_cubit.dart';
import '../../blocs/profile/profile_cubit.dart';
import '../../core/routing/routes.dart';
import 'home/home_screen.dart';
import 'profile/edit_profile_screen.dart';

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
        child: EditProfileScreen(user: context.watch<AuthRepository>().user,),
      ),
      BlocProvider<ProfileCubit>(
        create: (context) => getIt<ProfileCubit>(),
        child: const AddNewUserScreen(),
      ),
    ];

    List<String> appBarTitles = [
      'Home',
      'Edit Profile',
      'Add New User',
    ];

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.grey500,
            title:BlocBuilder<LayoutCubit, LayoutState>(
              builder: (context, state) {
                return Text(
                  appBarTitles[context.watch<LayoutCubit>().navBarIndex],
                  style: AppFonts.inter18Black500.copyWith(color: AppColors.primaryBlue),
                );
              },
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
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primaryBlue,
            ),
            child: Text('Auth System', style: AppFonts.inter18White500,),
          ),
          context.read<AuthRepository>().user.role == "Admin" ? ListTile(
            title: const Text('Home'),
            selected: context.watch<LayoutCubit>().navBarIndex == 0,
            onTap: () {
              context.read<LayoutCubit>().changeNavBarIndex(0);
              // Navigator.pop(context);
            },
          ): const SizedBox(),
           ListTile(
            title: const Text('Edit Profile'),
            selected: context.watch<LayoutCubit>().navBarIndex == 1,
            onTap: () {
              context.read<LayoutCubit>().changeNavBarIndex(1);
              // Navigator.pop(context);
            },
          ),
           context.read<AuthRepository>().user.role == "Admin" ? ListTile(
            title: const Text('Add New User'),
            selected: context.watch<LayoutCubit>().navBarIndex == 2,
            onTap: () {
              context.read<LayoutCubit>().changeNavBarIndex(2);
              // Navigator.pop(context);
            },
          ) : const SizedBox(),
          ListTile(
            title: const Text('Logout'),
            selected: false,
            onTap: () async {
              showAdaptiveDialog(
                context: context, 
                builder: (dialogContext) => BlocProvider.value(
                  value: context.read<LayoutCubit>(),
                  child: BlocConsumer<LayoutCubit, LayoutState>(
                    listenWhen: (previous, current) {
                      return current is LogoutError ||
                          current is LogoutSuccess;
                    },
                    listener: (context, state) {
                      if (state is LogoutError) {
                        defaultErrorSnackBar(
                            context: context,
                            message: state.msg);
                      } else if (state is LogoutSuccess) {
                        if (Navigator.of(dialogContext).canPop()) {
                          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
                        }
                      }
                    },
                    builder: (context, state) {
                      return DefaultDialog(
                        secondButtonColor: AppColors.errorRed,
                        onSecondButtonTapped: () {
                          context.read<LayoutCubit>().logout();
                        },
                        loading: state is LogoutLoading,
                        secondButtonText: "Yes, Logout",
                        title: "Already Leaving?",
                        subTitle:
                            "Are you sure you want to logout?",
                      );
                    },
                  )
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
