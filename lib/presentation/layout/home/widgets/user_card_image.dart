import 'package:flutter/material.dart';

class UserCardImage extends StatelessWidget {
  const UserCardImage({
    super.key,
    required this.userImagePath,
  });
  final String userImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 124,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Image.asset(userImagePath, fit: BoxFit.cover,)
    );
  }
}
