import 'package:chat_app/features/auth/presentation/views/login_page.dart';
import 'package:flutter/cupertino.dart';

void navigateToMainScreen(context) {
  Future.delayed(const Duration(seconds: 5), () {
    Navigator.pushNamed(context, LoginPage.id);
  });
}
