import 'package:flutter/cupertino.dart';

import '../../../../core/themes/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'WhatsUp',
      style: Styles.textStyle30,
    );
  }
}
