import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';
import '../../firebase/get_messages_from_db.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});
  static String id = "MessagesScreen";

  @override
  Widget build(BuildContext context) {
   // String email = ModalRoute.of(context)!.settings.arguments as String ;
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
      body:
          GetMessagesFromDB(
            // email:email ,
          ),
    );
  }
}




