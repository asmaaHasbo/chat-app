import 'package:flutter/cupertino.dart';
import 'package:chat_app/core/themes/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'WhatsUp',
      style: Styles.textStyle30,
    );
  }
}
