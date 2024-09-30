import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/home/home_cubit.dart';
import 'package:role_based_auth_system/core/theming/fonts.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_dropdown.dart';
import '../../../../core/widgets/widget_with_header.dart';

class UserRolesDropdown extends StatelessWidget {
  final int role;
  final String id;
  final ValueChanged<int> onRoleChanged;
  const UserRolesDropdown({
    super.key, 
    required this.id,
    required this.role, 
    required this.onRoleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<CustomDropdownState> dropdownKey = GlobalKey<CustomDropdownState>();
    return RepaintBoundary(
      key: const Key("UserRoles"),
      child: BlocBuilder<HomeCubit, HomeCubitState>(
        buildWhen: (previous, current) => current is ChangeRoleIndexState,
        builder: (context, state) {
          var blocRead = context.read<HomeCubit>();
          var blocWatch = context.watch<HomeCubit>();
          return WidgetWithHeader(
            key: const Key("UserRoles"),
            header: "Current Role:",
            headerStyle: AppFonts.inter14ToggleBlack400,
            widget: CustomDropdown<int>(
              onTap: () {},
              radius: 20,
              border: Border.all(
                color: AppColors.black.withOpacity(0.5),
              ),
              paddingLeft: 0,
              key: dropdownKey,
              paddingRight: 0,
              index: blocWatch.getRoleIndex(id),
              showText: false,
              listOfValues: const [
                "Admin",
                "User",
              ],
              text: "Select Role",
              isCheckedBox: false,
              optionsContainerWidth: 110,
              onChange: (_, int index) {
                onRoleChanged(index);
                blocRead.changeRoleIndexValue(index, id);
              },
              items: [
                "Admin",
                "User",
              ]
                  .map((element) => element)
                  .toList()
                  .asMap()
                  .entries
                  .map(
                    (item) => CustomDropdownItem(
                      key: UniqueKey(),
                      value: item.key,
                      child: Text(
                        item.value,
                        style: AppFonts.inter15Black400,
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}