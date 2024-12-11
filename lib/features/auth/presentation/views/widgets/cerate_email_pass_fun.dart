import 'package:chat_app/features/home_page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/shared_widgets/snack_bar.dart';
import 'package:chat_app/features/firebase/add_users_to_db.dart';

createEmailPassFun(context, name, phone, email, password) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password!,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar(msg: 'success', color: Colors.green),
    );
    addUser(name: name!, email: email!, phone: phone!);

    Navigator.popAndPushNamed(context, HomePage.id);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(snackBar(
          msg: 'The password provided is too weak.', color: Colors.red));
    } else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(snackBar(
          msg: 'The account already exists for that email.',
          color: Colors.red));
    }
  } catch (e) {
    print('this is an error$e');
  }
}
