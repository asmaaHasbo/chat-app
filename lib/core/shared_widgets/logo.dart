import 'package:flutter/cupertino.dart';

import '../../../../core/constants/assests_images.dart';

class Logo extends StatelessWidget {
 Logo({super.key , this.height});
   double ? height ;
  @override
  Widget build(BuildContext context) {
    return  Image.asset(logo , width: 200, height: height,);
  }
}
