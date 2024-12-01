import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:chat_app/features/chats/home_chat_users/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../../chatting_page/chatting_page.dart';
import '../../../../core/shared_widgets/circle_avater_icon.dart';
import 'num_of_msg.dart';

class HomeChatBody extends StatelessWidget {
  HomeChatBody({super.key , required this.userModule});
  @override
  UserModule userModule ;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ChattingPage.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          children: [
            CircleAvaterIcon(
              icon: Icons.person,
              backgroundIconColor: AppColors.secondaryColor,
              iconSize: 40,
              radius: 30,
            ),
            const SizedBox(width: 20),
            UserInfo(userModule: userModule,),
            const Spacer(flex: 1),
            const NumOfMsg()
          ],
        ),
      ),
    );
  }
}
