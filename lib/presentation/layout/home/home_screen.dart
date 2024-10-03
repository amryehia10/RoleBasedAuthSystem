import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/blocs/profile/profile_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/models/user_model.dart';
import 'package:role_based_auth_system/presentation/layout/home/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = context.watch<HomeCubit>().users;
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeCubitState>(
        buildWhen: (previous, current) => current is GetUsersError ||
                                      current is GetUsersLoading ||
                                      current is GetUsersSuccesss ||
                                      current is UpdateUserSuccess,

        builder: (context, state) {
          if (state is GetUsersLoading) {
            return const Center(child: CircularProgressIndicator(),);
          } else if(state is GetUsersSuccesss) {
            return SizedBox(
              width: AppConstants.screenWidth(context),
              height: AppConstants.screenHeight(context),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomeCubit>().getUsers();
                  },
                  child: ListView(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 16,
                        runSpacing: 12,
                        children: [
                          ...List.generate(users.length, (index) {
                            return UserCard(
                              user: users[index],
                            );
                          })
                        ],
                      ),
                    ]
                  ),
                ),
              ),
            );
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                  context.read<HomeCubit>().getUsers();
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(), 
                child: Center(child: SvgPicture.asset('assets/images/icons/error_img.svg'))
              )
            );
          }
        },
      ),
    );
  }
}
