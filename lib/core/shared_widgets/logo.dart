import 'package:flutter/cupertino.dart';

import '../../../../core/constants/assests_images.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(logo , width: 200,);
  }
}
