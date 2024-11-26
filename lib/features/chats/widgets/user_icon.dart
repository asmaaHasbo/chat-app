import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 30,
      backgroundColor: AppColors.secondaryColor,
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
