import 'package:chat_app/core/constants/assests_images.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            LoginTitle(),

          ],
        )
      ),
    );
  }
}
