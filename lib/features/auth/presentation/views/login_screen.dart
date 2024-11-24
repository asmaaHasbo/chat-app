import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/logo.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  static String id = "LoginScreen";
  String ? email ;
  String ? password ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Logo(
                height: 200,
              ),
              CustomTitle(
                title: 'Login',
              ),
              const SizedBox(
                height: 20,
              ),
              //------------------------ email -----------------
              CustomTextField(
                onChange: (value) {
                  email = value;
                },
                hint: 'enter your email',
                label: 'enter your email',
                prefixIcon: Icons.email,
              ),
              const SizedBox(
                height: 20,
              ),

              //------------------------ password -------------
              CustomTextField(
                onChange: (value) {
                  password = value ;
                },
                hint: 'enter your password',
                label: 'enter your password',
                prefixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 20,
              ),

              //---------------------- button--------------
              CustomButton(
                onPressed: () async{
                  try {
                    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email!,
                      password: password!,
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                buttName: 'Login',
              ),
              const SizedBox(
                height: 20,
              ),

              //----------------
              CustomRow(
                quText: "Don’t have an account?",
                linkedText: "Register Now",
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
