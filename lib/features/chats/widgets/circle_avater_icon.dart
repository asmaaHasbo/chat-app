import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';

class CircleAvaterIcon extends StatelessWidget {
  CircleAvaterIcon({super.key,
    required this.icon ,
    this.backgroundIconColor,
    this.radius,
    this.iconSize,
  });

  IconData icon;
  double ? radius ;
  double ? iconSize = 30 ;
  Color ? backgroundIconColor = AppColors.backIconColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: radius ,
      backgroundColor: backgroundIconColor,
      child: Icon(
        icon,
        color: Colors.white,
        size: iconSize,
      ),
    );
  }
}
