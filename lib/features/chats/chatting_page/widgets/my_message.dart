import 'package:chat_app/core/shared_widgets/convert_timestamp_to_date_time.dart';
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';

class MyMessage extends StatelessWidget {
  MyMessage({super.key, required this.messageModel});
  MessageModel messageModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5) ,
          margin: const EdgeInsets.only(bottom: 10),
          constraints: const BoxConstraints(maxWidth: 300.0),
          decoration: BoxDecoration(
            color: AppColors.backgroundMessageColor,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(15, 15),
              topRight: Radius.elliptical(15, 15),
              bottomLeft: Radius.elliptical(15, 15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                messageModel.message,
                style: const TextStyle(fontSize: 18),
              ),
              Text( covertTimestampToDateTime(timeStamp:  messageModel.messageTime), style: TextStyle(fontSize: 14 , color:AppColors.secondaryColor )),
            ],
          ),
        )
      ],
    );
  }
}


