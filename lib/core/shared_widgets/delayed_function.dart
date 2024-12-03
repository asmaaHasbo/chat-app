import 'package:chat_app/features/auth/presentation/views/login_page.dart';
import 'package:flutter/cupertino.dart';

import '../../features/auth/presentation/views/widgets/login_body.dart';

void navigateToMainScreen(context) {
  Future.delayed(const Duration(seconds: 8), () {
    Navigator.pushNamed(context, LoginPage.id);
  });
}