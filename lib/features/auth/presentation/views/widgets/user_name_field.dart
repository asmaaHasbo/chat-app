import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';
class UserNameField extends StatelessWidget {
  const UserNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomTextField(
      onChange: (String) {},
      type: TextInputType.name,
      hint: 'enter your Name',
      label: 'enter your Name',
      prefixIcon: Icons.person,
    );
  }
}
