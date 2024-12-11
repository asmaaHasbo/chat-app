import 'package:flutter/material.dart';
import 'package:chat_app/core/shared_widgets/custom_text_form_field.dart';

class UserNameField extends StatelessWidget {
  UserNameField({super.key, required this.onChange});
  Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChange: onChange,
      type: TextInputType.name,
      hint: 'enter your Name',
      label: 'enter your Name',
      prefixIcon: Icons.person,
    );
  }
}
