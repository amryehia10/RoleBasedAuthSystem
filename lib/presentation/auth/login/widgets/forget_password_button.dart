import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:role_based_auth_system/blocs/login/login_cubit.dart';
import 'package:role_based_auth_system/core/helpers/constants.dart';
import 'package:role_based_auth_system/core/routing/routes.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstants.screenWidth(context),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
            top: 5,
          ),
          child: SizedBox(
            height: 38,
            width: 160,
            child: InkWell(
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.forgetPasswordScreen,
                  arguments: context.read<LoginCubit>()
                );
              },
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Forget Password",
                  style: AppFonts.inter16PrimaryBlue400.copyWith(color: AppColors.grey400),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
