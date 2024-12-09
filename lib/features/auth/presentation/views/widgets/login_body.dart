import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:chat_app/features/auth/presentation/views/register_page.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_in_function.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/logo.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});
  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? password;
  String? email;
  bool isLoading = false;
  bool isObscured = false;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                Navigator.pushNamed(context, RegisterPage.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
