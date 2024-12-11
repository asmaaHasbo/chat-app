import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/auth/presentation/view_model/user_modle.dart';
import 'package:chat_app/features/users_list/widgets/showingNumMsg.dart';
import 'package:chat_app/features/users_list/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../../chatting_page/chatting_page.dart';
import '../../../../core/shared_widgets/circle_avater_icon.dart';

class usersListUi extends StatelessWidget {
  usersListUi({
    super.key,
    required this.userModule,
    required this.showNumMsg,
  });
  UserModule userModule;
  bool showNumMsg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChattingPage(
              myFriendName: userModule.name,
              myFriendEmail: userModule.email,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvaterIcon(
                    icon: Icons.person,
                    backgroundIconColor: AppColors.secondaryColor,
                    iconSize: 30,
                    radius: 25),
                const SizedBox(width: 20),
                UserInfo(userModule: userModule),
              ],
            ),
            showingNumOfMsgUi(showNumMsg)
          ],
        ),
      ),
    );
  }
}
