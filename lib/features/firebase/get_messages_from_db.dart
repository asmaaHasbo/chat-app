import 'package:chat_app/core/shared_widgets/center_circular_indicator.dart';
import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:chat_app/features/chatting_page/widgets/messages_page_body.dart';

// ignore: must_be_immutable
class GetMessagesFromDB extends StatelessWidget {
  GetMessagesFromDB({super.key, required this.myFriendEmail});

  String myFriendEmail;

  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('createdAt', descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = FirebaseAuth.instance.currentUser;
          List<MessageModel> messageModelList = [];

          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            if ((snapshot.data!.docs[i]['id'] == user?.email &&
                    snapshot.data!.docs[i]['myFriendEmail'] == myFriendEmail) ||
                (snapshot.data!.docs[i]['id'] == myFriendEmail &&
                    snapshot.data!.docs[i]['myFriendEmail'] == user?.email)) {
              messageModelList
                  .add(MessageModel.fromJson(snapshot.data!.docs[i]));
            }
          }
          return MessagesPageBody(
              messageModelList: messageModelList, myFriendEmail: myFriendEmail);
        }
        if (snapshot.hasError) {
          print(snapshot.error.toString());
        }
        return const CenterCircularIndicator();
      },
    );
  }
}
