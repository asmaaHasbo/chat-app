import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text_form_field.dart';

class PhoneField extends StatelessWidget {
  PhoneField({super.key, required this.onChange});
  Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChange: onChange,
      type: TextInputType.number,
      hint: 'enter your phone',
      label: 'enter your phone',
      prefixIcon: Icons.phone_android_outlined,
    );
  }
}
