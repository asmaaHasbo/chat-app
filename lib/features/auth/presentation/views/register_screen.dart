import 'package:chat_app/features/auth/presentation/views/widgets/cerate_email_pass_fun.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/shared_widgets/custom_button.dart';
import '../../../../core/shared_widgets/custom_text_field.dart';
import '../../../../core/shared_widgets/logo.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});
  static String id = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 GlobalKey<FormState> formKey = GlobalKey();

  String ? email ;

  String ? password ;

  bool isLoading = false ;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SafeArea(
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
                    title: 'Register',
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //----------------------- name ---------------
                  CustomTextField(
                    onChange: (String) {},
                    type: TextInputType.name,
                    hint: 'enter your Name',
                    label: 'enter your Name',
                    prefixIcon: Icons.person,
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

                  //----------------------- phone ---------------
                  CustomTextField(
                    onChange: (String) {},
                    type: TextInputType.number,
                    hint: 'enter your phone',
                    label: 'enter your phone',
                    prefixIcon: Icons.phone_android_outlined,
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
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        isLoading = true;
                        setState(() {

                        });
                        createEmailPassFun(context, email, password);
                        isLoading = false;
                        setState(() {

                        });
                      }

                    },
                    buttName: 'Register',
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //----------------
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
          ),
        ),
      ),
    );
  }
}
