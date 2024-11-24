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
          borderRadius: BorderRadius.circular(16.0),
        ),
        minimumSize: const Size(double.infinity, 55),
      ),
      child: Text(
        buttName,
        style: const TextStyle(fontSize: 21, color: Colors.white),
      ),
    );
  }
}
