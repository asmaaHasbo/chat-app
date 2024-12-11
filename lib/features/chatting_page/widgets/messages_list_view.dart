import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'coming_message.dart';
import 'my_message.dart';

class MessagesListView extends StatelessWidget {
  MessagesListView({
    super.key,
    required this.allMessagesInDb,
    required this.scrollController,
    required this.myFriendEmail,
  });
  String myFriendEmail;
  List<MessageModel> allMessagesInDb;
  final ScrollController scrollController;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        reverse: true,
        itemCount: allMessagesInDb.length,
        itemBuilder: (BuildContext context, int index) {
          if (allMessagesInDb[index].id == user?.email) {
            return MyMessage(messageModel: allMessagesInDb[index]);
          } else {
            return ComingMessage(messageModel: allMessagesInDb[index]);
          }
        },
      ),
    );
  }
}
