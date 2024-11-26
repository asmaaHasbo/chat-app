import 'package:chat_app/features/chats/widgets/num_of_msg.dart';
import 'package:chat_app/features/chats/widgets/user_icon.dart';
import 'package:chat_app/features/chats/widgets/user_info.dart';
import 'package:flutter/material.dart';
class HomeChatBody extends StatelessWidget {
  const HomeChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          UserIcon(),
          SizedBox(
              width: 20
          ),
          UserInfo(),
          Spacer(flex: 1),
          NumOfMsg()
        ],
      ),
    );
  }
}
