import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.onChange,
    required this.hint,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon
  });

  Function(String) onChange;
  String hint;
  String label ;
  IconData prefixIcon ;
  IconData ? suffixIcon ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: const TextStyle(fontSize: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.secondaryColor,),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black12 , width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xff34B7F1) ,width: 2),
        ),
        prefixIcon: Icon(prefixIcon , color: Colors.black54,),
        suffixIcon: Icon( suffixIcon,color:Colors.black54 ,)
      ),
    );
  }
}
