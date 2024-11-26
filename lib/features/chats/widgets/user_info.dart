import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Asmaa',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          '010299037',
          style: TextStyle(
              fontSize: 18, color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
