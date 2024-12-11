import 'package:flutter/material.dart';
import 'package:chat_app/core/themes/colors.dart';

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: AppColors.mainColor,
    ));
  }
}
