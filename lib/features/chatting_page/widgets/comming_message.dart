import 'package:flutter/cupertino.dart';

import '../../../../core/themes/colors.dart';
import '../../auth/presentation/view_model/message_model.dart';
import 'message_ui.dart';

class CommingMessage extends StatelessWidget {
  CommingMessage({super.key , required this.messageModel});
  MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return MessageUi(
      messageModel: messageModel,
      messageBackgroundColor: AppColors.commingMessageColor,
      position:  MainAxisAlignment.end,
      topLeft: const Radius.elliptical(15, 15),
      topRight: const Radius.elliptical(0, 0),
    );
  }
}
