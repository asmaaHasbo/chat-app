// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:chat_app/core/constants/assets_images.dart';

class Logo extends StatelessWidget {
  Logo({super.key, this.height});
  double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logo,
      width: 200,
      height: height,
    );
  }
}
