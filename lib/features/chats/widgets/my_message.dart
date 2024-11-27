import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child:
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(bottom: 10 ),
            decoration: BoxDecoration(
              color: AppColors.backgroundMessageColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.elliptical(15, 15),
                topRight: Radius.elliptical(15, 15),
                topLeft: Radius.elliptical(15, 15),
              ),
              // borderR:BorderRadius.only(bottomLeft: 20),
            ),
            child: const Text(
              'hello im afiled',
              style: TextStyle(fontSize: 18),
            ),
          ),

      ),
    );
  }
}
