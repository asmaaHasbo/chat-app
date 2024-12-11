import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomTitle extends StatelessWidget {
  CustomTitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle18.copyWith(fontSize: 26),
    );
  }
}
