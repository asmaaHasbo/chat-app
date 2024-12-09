import 'package:chat_app/features/auth/presentation/views/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = "RegisterPage";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: false,
        child: Scaffold(body: RegisterBody()),
      ),
    );
  }
}
