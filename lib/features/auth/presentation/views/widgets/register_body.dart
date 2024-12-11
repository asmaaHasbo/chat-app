import 'package:chat_app/features/auth/presentation/views/widgets/cerate_email_pass_fun.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/user_name_field.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:chat_app/core/shared_widgets/logo.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? name;
  String? phone;
  String? email;
  String? password;
  bool isLoading = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            Logo(height: 150),
            CustomTitle(title: 'Register'),
            const SizedBox(height: 20),
            UserNameField(onChange: (value) {
              name = value;
            }),
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
            PhoneField(
              onChange: (value) {
                phone = value;
              },
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
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  isLoading = true;
                  setState(() {});
                  createEmailPassFun(context, name, phone, email, password);
                  setState(() {});
                  isLoading = false;
                  setState(() {});
                }
              },
              buttName: 'Register',
            ),
            const SizedBox(height: 20),
            //---------------
            CustomRow(
              quText: "Already have an account?",
              linkedText: "Login Now",
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
