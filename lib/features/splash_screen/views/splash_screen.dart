import 'package:chat_app/features/splash_screen/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';
import '../../../core/shared_widgets/delayed_function.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String id = "splashScreen";

  @override
  Widget build(BuildContext context) {
    navigateToMainScreen(context);
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
