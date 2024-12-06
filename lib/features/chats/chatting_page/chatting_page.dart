import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';
import '../../firebase/get_messages_from_db.dart';

class ChattingPage extends StatelessWidget {
   ChattingPage({super.key , required this.userName});
  static String id = "MessagesScreen";

  String userName ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          userName,
          style: Styles.textStyle18.copyWith(fontSize: 24),
        ),
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
        toolbarHeight: 70,
        actions: const [
          Icon(Icons.call),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body:
          GetMessagesFromDB(
            // email:email ,
          ),
    );
  }
}




