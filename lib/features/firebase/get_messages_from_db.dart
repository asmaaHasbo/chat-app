import 'package:chat_app/core/shared_widgets/center_circular_indicator.dart';
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:chat_app/features/chats/chatting_page/widgets/messages_page_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetMessagesFromDB extends StatelessWidget {
  GetMessagesFromDB({
    super.key,
    // required this.email
  });

  // String email ;

  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('createdAt' , descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messageModelList = [];
          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            messageModelList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
          }
          return MessagesPageBody(
            messageModelList: messageModelList,
            // email:email ,
          );
        }
        return const CenterCircularIndicator();
      },
    );
  }
}
