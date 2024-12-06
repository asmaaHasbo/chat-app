import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:chat_app/features/auth/presentation/views/register_page.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_in_function.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../core/shared_widgets/logo.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

 String ? gemail;

class _LoginBodyState extends State<LoginBody> {
  String? password;

  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  bool isObscured = false;
  bool isVisible = false;

  String ? theEmail ;

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
                      gemail = value;
                      theEmail = value ;
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
                        loginInFunction(context, gemail ,password,theEmail,);
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
                      Navigator.pushNamed(context, RegisterPage.id);
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
