import 'package:chat_app/features/chats/home_chat_users/widgets/bottom_navigation.dart';
import 'package:chat_app/features/firebase/get_users_from_db.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class HomeChatUsers extends StatelessWidget {
  const HomeChatUsers({super.key});

  static String id = "HomeChatUsers";

  @override
  Widget build(BuildContext context) {
    // String email = ModalRoute.of(context)!.settings.arguments as String ;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsUp',
          style: Styles.textStyle18.copyWith(fontSize: 24),
        ),
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
        toolbarHeight: 70,
        actions: const [
          Icon(Icons.search_rounded),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: GetUsersFromDb(
        // email: email,
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
