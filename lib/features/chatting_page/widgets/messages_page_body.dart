// ignore_for_file: must_be_immutable
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:chat_app/features/chatting_page/widgets/send_message_field.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/shared_widgets/background_img.dart';
import 'messages_list_view.dart';

class MessagesPageBody extends StatelessWidget {
  MessagesPageBody(
      {super.key, required this.messageModelList, required this.myFriendEmail});

  List<MessageModel> messageModelList;
  String myFriendEmail;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundImg(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            MessagesListView(
              allMessagesInDb: messageModelList,
              scrollController: scrollController,
              myFriendEmail: myFriendEmail,
            ),
            SendMessageField(
              scrollController: scrollController,
              myFriendEmail: myFriendEmail,
            ),
          ],
        ),
      ),
    );
  }
}