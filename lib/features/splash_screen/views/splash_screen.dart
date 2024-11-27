import 'package:chat_app/core/constants/assests_images.dart';
import 'package:chat_app/features/splash_screen/views/widgets/description_text.dart';
import 'package:chat_app/features/splash_screen/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

import '../../../core/shared_widgets/background_img.dart';
import '../../../core/shared_widgets/delayed_function.dart';
import '../../../core/shared_widgets/logo.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  static const String id = "splashScreen";

  @override
  Widget build(BuildContext context) {
    navigateToMainScreen(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: backgroundImg(),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Logo(),
                const WelcomeText(),
                const SizedBox(
                  height: 170,
                ),
                const DescriptionText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


