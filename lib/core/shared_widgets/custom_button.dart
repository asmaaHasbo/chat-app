// ignore_for_file: must_be_immutable
import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPressed,
    required this.buttName,
  });

  VoidCallback onPressed;
  String buttName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        buttName,
        style: const TextStyle(
            fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
