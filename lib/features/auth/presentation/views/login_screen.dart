import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: Text('start'),),
    );
  }
}
