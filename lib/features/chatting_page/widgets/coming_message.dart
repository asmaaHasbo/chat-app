import 'package:flutter/cupertino.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'message_ui.dart';

class ComingMessage extends StatelessWidget {
  ComingMessage({super.key, required this.messageModel});
  MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return MessageUi(
      messageModel: messageModel,
      messageBackgroundColor: AppColors.comingMessageColor,
      position: MainAxisAlignment.end,
      topLeft: const Radius.elliptical(15, 15),
      topRight: const Radius.elliptical(0, 0),
    );
  }
}
