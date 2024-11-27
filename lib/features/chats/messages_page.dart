import 'package:chat_app/core/shared_widgets/background_img.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/chats/widgets/messages_list_view.dart';
import 'package:chat_app/features/chats/widgets/send_message_field.dart';
import 'package:flutter/material.dart';

import '../../core/themes/styles.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});
  static String id = "MessagesScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Container(
        decoration: backgroundImg(),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              MessagesListView(),

              SendMessageField(),
            ],
          ),
        ),
      ),
    );
  }
}


