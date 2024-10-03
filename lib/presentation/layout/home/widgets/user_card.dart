import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/core/routing/routes.dart';
import 'package:role_based_auth_system/core/widgets/default_dialog.dart';
import 'package:role_based_auth_system/core/widgets/snackbar.dart';
import 'package:role_based_auth_system/models/user_model.dart';
import 'package:role_based_auth_system/presentation/layout/home/widgets/user_card_image.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.editProfileScreen,
          arguments:{
            'isFromHome': true,
            'user': user,
          },
        );
      },
      child: Container(
        width: AppConstants.screenWidth(context) * 0.42,
        margin: const EdgeInsets.only(bottom: 4),
        constraints: const BoxConstraints(
          maxWidth: 300,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                _userImage(),
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          showAdaptiveDialog(
                              context: context,
                              builder: (dialogContext) => BlocProvider.value(
                                value: context.read<HomeCubit>(),
                                child: BlocConsumer<HomeCubit, HomeCubitState>(
                                  listenWhen: (previous, current) {
                                    return current is DeleteUsersError ||
                                        current is DeleteUsersSuccesss;
                                  },
                                  listener: (context, state) {
                                    if (state is DeleteUsersError) {
                                      defaultErrorSnackBar(
                                          context: context,
                                          message: state.msg);
                                    } else if (state is DeleteUsersSuccesss) {
                                      if (Navigator.of(dialogContext)
                                          .canPop()) {
                                        Navigator.of(dialogContext).pop();
                                      }
                                      defaultSuccessSnackBar(context: context, message:  state.msg);
                                    }
                                  },
                                  builder: (context, state) {
                                    return DefaultDialog(
                                      secondButtonColor: AppColors.errorRed,
                                      onSecondButtonTapped: () {
                                        context.read<HomeCubit>().deleteUsers(user.id);
                                      },
                                      loading: state is DeleteUsersLoading,
                                      secondButtonText: "Yes",
                                      title: "Delete",
                                      subTitle:
                                          "Are you sure you want to delete this user?",
                                    );
                                  },
                                ),
                              ),
                            );
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: AppColors.errorRed,
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0, left: 16, top: 8, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.inter16PrimaryBlue400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user.email,
                    textAlign: TextAlign.center,
                    style: AppFonts.inter14Grey400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Current Role: ',
                      style: AppFonts.inter15Black400,
                      children: <TextSpan>[
                        TextSpan(text: user.role, style: AppFonts.inter15Gold400),
                      ],
                    ),
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Hero _userImage() {
    return Hero(
      tag: user.id,
      child: const UserCardImage(
        userImagePath: 'assets/images/profileImage.png',
      ),
    );
  }
}
