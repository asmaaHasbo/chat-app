import 'package:chat_app/core/shared_widgets/convert_timestamp_to_date_time.dart';
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';

class MessageUi extends StatelessWidget {
  MessageUi({
    super.key,
    required this.messageModel,
    required this.messageBackgroundColor,
    required this.topLeft,
    required this.topRight,
  });
  MessageModel messageModel;

  Color messageBackgroundColor;

  Radius topRight;
  Radius topLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          margin: const EdgeInsets.only(bottom: 10),
          constraints: const BoxConstraints(maxWidth: 300.0),
          decoration: BoxDecoration(
            color: messageBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomRight: const Radius.elliptical(15, 15),
              topRight: topRight,
              topLeft: topLeft,
              bottomLeft: const Radius.elliptical(15, 15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                messageModel.message,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                  covertTimestampToDateTime(
                      timeStamp: messageModel.messageTime),
                  style:
                      TextStyle(fontSize: 14, color: AppColors.secondaryColor)),
            ],
          ),
        )
      ],
    );
  }
}
