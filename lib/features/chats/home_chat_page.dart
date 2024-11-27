import 'package:chat_app/features/chats/widgets/bottom_navigation.dart';
import 'package:chat_app/features/chats/widgets/home_chat_body.dart';
import 'package:flutter/material.dart';

import '../../core/themes/styles.dart';

class HomeChatPage extends StatelessWidget {
  const HomeChatPage({super.key});

  static String id = "HomeChatScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const HomeChatBody();
            },
            itemCount: 5,
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
