import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/shared_widgets/center_circular_indicator.dart';
import '../chats/home_chat_users/widgets/users_list_view.dart';

class GetUsersFromDb extends StatelessWidget {
  GetUsersFromDb({super.key , required this.showNumMsg});
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  bool  showNumMsg   ;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: users.where('owner', isEqualTo: false).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<UserModule> userModuleList = [];
            List<QueryDocumentSnapshot> data = snapshot.data!.docs;
            for (int i = 0; i < data.length; i++) {
              userModuleList.add(UserModule.fromJson(snapshot.data!.docs[i]));
            }
            return UsersListView(userModule: userModuleList, showNumMsg:showNumMsg ,);
          } else if (snapshot.hasError) {
            return const Text('error');
          }
          return const CenterCircularIndicator();
        });
  }
}
