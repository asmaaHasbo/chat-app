import 'package:flutter/material.dart';

import 'colors.dart';

abstract class Styles {
  static TextStyle textStyle30 = const TextStyle(
    fontSize: 30,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle textStyle18 = const TextStyle(
    fontSize: 18,
    color: Colors.black, fontWeight: FontWeight.w900,
  );
}
