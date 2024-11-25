import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/cerate_email_pass_fun.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/shared_widgets/logo.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static String id = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading =false ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLoading ,
        progressIndicator: CircularProgressIndicator(color: Colors.red,),

        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Logo(
                    height: 150,
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
                    type: TextInputType.emailAddress,
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
                      password = value;
                    },
                    type: TextInputType.visiblePassword,
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
                    onPressed: () async {
                      if(formKey.currentState!.validate()) {
                        isLoading = true ;
                        setState(() {

                        });
                        createEmailPassFun(context, email, password);
                        isLoading = false ;
                        setState(() {

                        });
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
        ),
      ),
    );
  }
}
