import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';
class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    CustomTextField(
      onChange: (String) {},
      type: TextInputType.number,
      hint: 'enter your phone',
      label: 'enter your phone',
      prefixIcon: Icons.phone_android_outlined,
    );
  }
}
