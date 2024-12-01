import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';

class MyMessage extends StatelessWidget {
  MyMessage({super.key, required this.messageModel});
  MessageModel messageModel ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: AppColors.backgroundMessageColor,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(15, 15),
              topRight: Radius.elliptical(15, 15),
              topLeft: Radius.elliptical(15, 15),
            ),
          ),
          child: Text(
            messageModel.message,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
