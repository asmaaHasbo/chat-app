import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/chats/messages_page.dart';
import 'package:chat_app/features/chats/widgets/num_of_msg.dart';
import 'package:chat_app/features/chats/widgets/circle_avater_icon.dart';
import 'package:chat_app/features/chats/widgets/user_info.dart';
import 'package:flutter/material.dart';
class HomeChatBody extends StatelessWidget {
  const HomeChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    GestureDetector(
      onTap: (){
        Navigator.pushNamed(context , MessagePage.id);
      },
      child:Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          children: [
            CircleAvaterIcon(
              icon: Icons.person,
              backgroundIconColor: AppColors.secondaryColor,
              iconSize: 40,
              radius: 30,
            ),
            const SizedBox(
                width: 20
            ),
            UserInfo(),
            const Spacer(flex: 1),
            const NumOfMsg()
          ],
        ),
      ) ,
    )
    ;
  }
}
