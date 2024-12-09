import 'package:chat_app/features/firebase/get_users_from_db.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
   const UsersScreen({super.key});
 static bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return GetUsersFromDb(showNumMsg: true);
  }
}
