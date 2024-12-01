// ignore_for_file: must_be_immutable

import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  CustomRow(
      {super.key,
      required this.quText,
      required this.onPressed,
      required this.linkedText});

  String quText;
  String linkedText;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          quText,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            linkedText,
            style: TextStyle(fontSize: 14, color: AppColors.mainColor , fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
