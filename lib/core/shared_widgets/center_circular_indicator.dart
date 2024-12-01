import 'package:flutter/material.dart';

import '../themes/colors.dart';

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: AppColors.mainColor,
    ));
  }
}
