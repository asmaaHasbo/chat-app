import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/cerate_email_pass_fun.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_in_function.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/shared_widgets/logo.dart';
import '../../../../core/shared_widgets/snack_bar.dart';

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

  bool isLoading = false;
  bool isObscured = false;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        progressIndicator: const CircularProgressIndicator(
          color: Colors.red,
        ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  const SizedBox(height: 70),
                  Logo(height: 150),
                  CustomTitle(title: 'Login'),
                  const SizedBox(height: 20),
                  CustomTextField(
                    onChange: (value) {
                      email = value;
                    },
                    type: TextInputType.emailAddress,
                    hint: 'enter your email',
                    label: 'enter your email',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    onChange: (value) {
                      password = value;
                    },
                    type: TextInputType.visiblePassword,
                    hint: 'enter your password',
                    label: 'enter your password',
                    prefixIcon: Icons.lock,
                    suffixIconPress: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    suffixIcon: isVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        loginInFunction(context, email, password);
                        isLoading = false;
                        setState(() {});
                      }
                    },
                    buttName: 'Login',
                  ),

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
