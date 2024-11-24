import 'package:flutter/cupertino.dart';

import '../../features/auth/presentation/views/login_screen.dart';

void navigateToMainScreen(context) {
  Future.delayed(const Duration(seconds: 8), () {
    Navigator.pushNamed(context, LoginScreen.id);
  });
}