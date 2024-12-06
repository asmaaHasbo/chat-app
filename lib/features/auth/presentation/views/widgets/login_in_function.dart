import 'package:chat_app/features/chats/home_chat_users/home_chat_users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/snack_bar.dart';

loginInFunction(context, email, password, theEmail) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar(
        msg: 'success',
        color: Colors.green,
      ),
    );
    // // print(theEmail);
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeChatUsers(
    //         email: 'from login' + theEmail,
    //       ),
    //     ));
    Navigator.popAndPushNamed(
      context,
      HomeChatUsers.id,
      arguments: theEmail,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(
          snackBar(msg: 'No user found for that email.', color: Colors.red));
    } else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(snackBar(
          msg: 'Wrong password provided for that user.', color: Colors.red));
    }
  } catch (e) {
    print(e.toString());
  }
}
