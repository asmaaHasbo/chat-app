import 'package:flutter/material.dart';

import 'package:chat_app/core/themes/colors.dart';

class NumOfMsg extends StatelessWidget {
  const NumOfMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '12:30 pm',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5),
        CircleAvatar(
          minRadius: 15,
          backgroundColor: AppColors.mainColor,
          child: Text(
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
