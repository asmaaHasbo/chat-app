import 'package:chat_app/features/splash_screen/views/widgets/welcome_text.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/shared_widgets/background_img.dart';
import '../../../../core/shared_widgets/logo.dart';
import 'description_text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: backgroundImg(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Logo(),
          const WelcomeText(),
          const SizedBox(height: 170),
          const DescriptionText(),
        ],
      ),
    );
  }
}
