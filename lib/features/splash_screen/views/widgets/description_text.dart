import 'package:flutter/material.dart';

import '../../../../core/themes/styles.dart';
class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
   return Text(
      'The best chat app in this century',
      style: Styles.textStyle22,
    );
  }
}
