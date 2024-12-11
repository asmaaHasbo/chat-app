import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:chat_app/features/users_list/widgets/users_list_ui.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchScreenBody extends StatelessWidget {
  SearchScreenBody({super.key, required this.searchInput});
  String searchInput;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (context, snapshots) {
          if (snapshots.hasError) {
            print('there is an error');
          } else if (snapshots.hasData) {
            List<UserModule> userModuleList = [];
            for (var i = 0; i < snapshots.data!.docs.length; i++) {
              if (searchInput.isEmpty) {
                userModuleList
                    .add(UserModule.fromJson(snapshots.data!.docs[i]));
              } else if (snapshots.data!.docs[i]['name']
                  .toString()
                  .toLowerCase()
                  .startsWith(searchInput.toLowerCase())) {
                userModuleList
                    .add(UserModule.fromJson(snapshots.data!.docs[i]));
              }
            }
            return ListView.builder(
              itemCount: userModuleList.length,
              itemBuilder: (context, index) {
                return UsersListUi(
                  userModule: userModuleList[index],
                  showNumMsg: false,
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
