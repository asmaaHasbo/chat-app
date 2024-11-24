import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('Log in to your account' ,
      style:Styles.textStyle22.copyWith(fontSize: 26),
      ),
    );
  }
}
