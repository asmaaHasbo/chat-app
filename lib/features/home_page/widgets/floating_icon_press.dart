import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/firebase/get_users_from_db.dart';
import 'package:flutter/material.dart';

class FloatingIconPress extends StatelessWidget {
  const FloatingIconPress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: Styles.textStyle30,
        ),
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      body: GetUsersFromDb(showNumMsg: false),
    );
  }
}
