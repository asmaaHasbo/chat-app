import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/shared_widgets/center_circular_indicator.dart';
import 'package:chat_app/features/users_list/widgets/users_list_view.dart';

class GetUsersFromDb extends StatelessWidget {
  GetUsersFromDb({super.key, required this.showNumMsg});
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  bool showNumMsg;

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
            return UsersListView(
              userModule: userModuleList,
              showNumMsg: showNumMsg,
            );
          } else if (snapshot.hasError) {
            return const Text('error');
          }
          return const CenterCircularIndicator();
        });
  }
}
