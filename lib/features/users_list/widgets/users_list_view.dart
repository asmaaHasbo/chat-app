import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:flutter/cupertino.dart';

import 'usersListUi.dart';

class UsersListView extends StatelessWidget {
  UsersListView({
    super.key,
    required this.userModule,
    required this.showNumMsg,
  });
  bool showNumMsg;

  List<UserModule> userModule;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return usersListUi(
            userModule: userModule[index],
            myFriendName: userModule[index].name,
            myFriendEmail: userModule[index].email,
            showNumMsg: showNumMsg,
          );
        },
        itemCount: userModule.length,
      ),
    );
  }
}
