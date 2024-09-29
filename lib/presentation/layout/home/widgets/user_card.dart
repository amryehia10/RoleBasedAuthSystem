import 'package:flutter/material.dart';
import 'package:role_based_auth_system/models/user_model.dart';
import 'package:role_based_auth_system/presentation/layout/home/widgets/user_card_image.dart';
import 'package:role_based_auth_system/presentation/layout/home/widgets/user_roles_dropdown.dart';

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
        // context.pushNamed(
        //   Routes.carDetailsScreen,
        //   arguments: CardDetailsScreenArguments(
        //     car: car,
        //   ),
        // );
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
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: AppColors.errorRed,))
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                left: 16,
                top: 8,
                bottom: 10
              ),
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
                  UserRolesDropdown(
                    role: user.role,
                    id: user.id,
                    onRoleChanged: (int newIndex) {
                      user.role = newIndex;
                    }
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
      child: UserCardImage(
        userImagePath: user.profileImageUrl,
      ),
    );
  }
}
