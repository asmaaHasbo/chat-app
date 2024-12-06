import 'package:chat_app/features/chats/home_chat_users/widgets/bottom_navigation.dart';
import 'package:chat_app/features/firebase/get_users_from_db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class HomeChatUsers extends StatelessWidget {
 HomeChatUsers({super.key , this.email});

  static String id = "HomeChatUsers";

  String ? email ;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    // if (user != null) {
    //   // Name, email address, and profile photo URL
    //   final name = user.displayName;
    //   final email = user.email;
    //   final photoUrl = user.photoURL;
    //
    //   // Check if user's email is verified
    //   final emailVerified = user.emailVerified;
    //
    //   // The user's ID, unique to the Firebase project. Do NOT use this value to
    //   // authenticate with your backend server, if you have one. Use
    //   // User.getIdToken() instead.
    //   final uid = user.uid;
    // }

    print( user?.email);

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
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Icon(Icons.menu),
          // ),
        ],
      ),
      drawer: Drawer(),
      body: GetUsersFromDb(
        // email: email,
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
