import 'package:chat_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}
