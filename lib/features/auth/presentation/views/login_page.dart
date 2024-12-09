import 'package:chat_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: false,
        progressIndicator: CircularProgressIndicator(
          color: Colors.red,
        ),
        child: Scaffold(
          body: LoginBody(),
        ),
      ),
    );
  }
}
