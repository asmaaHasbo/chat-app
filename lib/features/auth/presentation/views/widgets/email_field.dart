import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';
class EmailField extends StatelessWidget {
   EmailField({super.key , required this.onChange});
   Function(String) onChange ;

   @override
  Widget build(BuildContext context) {
    return  CustomTextField(
      onChange: onChange,
      type: TextInputType.emailAddress,
      hint: 'enter your email',
      label: 'enter your email',
      prefixIcon: Icons.email,
    )  ;
  }
}

