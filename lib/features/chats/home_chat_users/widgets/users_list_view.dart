import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:flutter/cupertino.dart';

import 'home_chat_body.dart';

class UsersListView extends StatelessWidget {
  UsersListView({
    super.key,
    required this.userModule,
  });
  List<UserModule> userModule;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return HomeChatBody(userModule: userModule[index]);
        },
        itemCount: userModule.length,
      ),
    );
  }
}
