import 'package:chat_app/core/constants/assests_images.dart';
import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Logo(),
              const LoginTitle(),
              const SizedBox(
                height: 20,
              ),
              //------------------------ email -----------------
              CustomTextField(
                onChange: (String) {},
                hint: 'enter your email',
                label: 'enter your email',
                prefixIcon: Icons.email,
              ),
              const SizedBox(
                height: 20,
              ),

              //------------------------ password -------------
              CustomTextField(
                onChange: (String) {},
                hint: 'enter your password',
                label: 'enter your password',
                prefixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 20,
              ),

              //---------------------- button--------------
              CustomButton(onPressed: (){}, buttName: 'Login'),
              const SizedBox(
                height: 20,
              ),

              //----------------
              CustomRow(quText: "Don’t have an account?",
                  linkedText: "Register here", onPressed: () {  },)
            ],
          ),
        ),
      ),
    );
  }
}
