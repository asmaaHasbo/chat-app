import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:chat_app/features/chats/home_chat_users/widgets/addingNumMsg.dart';
import 'package:chat_app/features/chats/home_chat_users/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../../chatting_page/chatting_page.dart';
import '../../../../core/shared_widgets/circle_avater_icon.dart';

class HomeChatBody extends StatelessWidget {
  HomeChatBody({
    super.key,
    required this.userModule,
    required this.userName,
    required this.showNumMsg,

  });
  String userName;
  UserModule userModule;
   bool  showNumMsg   ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChattingPage(userName: userName,),),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvaterIcon(
                  icon: Icons.person,
                  backgroundIconColor: AppColors.secondaryColor,
                  iconSize: 25,
                  radius: 25
                ),
                const SizedBox(width: 20),
                UserInfo(userModule: userModule),
              ],
            ),
             showingNumWidget(showNumMsg)
          ],
        ),
      ),
    );
  }
}
