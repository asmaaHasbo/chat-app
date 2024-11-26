import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';
class PasswordField extends StatefulWidget {
   PasswordField({super.key , this.password});
   String ? password ;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
   bool isVisible = false ;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChange: (value) {
        widget.password = value;
      },
      type: TextInputType.visiblePassword,
      hint: 'enter your password',
      label: 'enter your password',
      prefixIcon: Icons.lock,

      suffixIconPress: (){
        isVisible = !isVisible;
        setState(() {
        });
        print(isVisible);
      },
      suffixIcon: isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined ,
    );
  }
}
