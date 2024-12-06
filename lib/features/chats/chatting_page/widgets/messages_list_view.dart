import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:chat_app/features/chats/chatting_page/widgets/comming_message.dart';
import 'package:chat_app/features/chats/chatting_page/widgets/my_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class MessagesListView extends StatelessWidget {
  MessagesListView(
      {super.key,
      required this.messageModelList,
      required this.scrollController,});

  List<MessageModel> messageModelList;
  final ScrollController scrollController;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        reverse: true,
        itemCount: messageModelList.length,
        itemBuilder: (BuildContext context, int index) {
          return messageModelList[index].id == user?.email
              ? MyMessage(messageModel: messageModelList[index])
              : CommingMessage(messageModel: messageModelList[index]);
        },
      ),
    );
  }
}
