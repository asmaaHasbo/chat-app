import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
class NumOfMsg extends StatelessWidget {
  const NumOfMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          '12:30 pm',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        CircleAvatar(
          minRadius: 15,
          backgroundColor: AppColors.mainColor,
          child: const Text(
            '2',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
