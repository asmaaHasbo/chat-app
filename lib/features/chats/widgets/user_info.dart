import 'package:chat_app/features/auth/presentation/view_model/user_module.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
class UserInfo extends StatelessWidget {
  UserInfo({super.key});

  UserModule ? userModule = UserModule(name: 'dd', phone: '1029', email:'x');


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userModule!.name,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          userModule!.phone,
          style: TextStyle(
              fontSize: 18, color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
