import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/snack_bar.dart';
import '../../../../chats/home_chat_page.dart';
import 'add_users_to_collection.dart';

createEmailPassFun(context ,name , phone , email , password ) async{
  try {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar(msg: 'success', color: Colors.green ,),
    );
    addUser(name: name! , email: email!, phone: phone!);

    Navigator.popAndPushNamed(context, HomeChatPage.id);

  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(snackBar(
          msg: 'The password provided is too weak.',
          color: Colors.red));
    }
    else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(snackBar(
          msg: 'The account already exists for that email.',
          color: Colors.red));
    }
  }
  catch (e) {
    print('this is an error' + e.toString());
  }
}