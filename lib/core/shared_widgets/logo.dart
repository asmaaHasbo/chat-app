import 'package:flutter/cupertino.dart';

import '../../../../core/constants/assests_images.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(logo , width: 200,);
  }
}
