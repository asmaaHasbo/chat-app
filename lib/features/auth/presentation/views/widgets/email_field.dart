import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';
// class EmailField extends StatelessWidget {
//    EmailField({super.key});
//   static String ? email ;
//   @override
//   Widget build(BuildContext context) {
//     return   ;
//   }
// }

String ? userEmail ;
emailField(){
  CustomTextField(
    onChange: (value) {
      userEmail = value;
    },
    type: TextInputType.emailAddress,
    hint: 'enter your email',
    label: 'enter your email',
    prefixIcon: Icons.email,
  );
}