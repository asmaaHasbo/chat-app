import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.onChange,
    required this.hint,
    required this.label,
    required this.type,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixIconPress,
  }  );

  Function(String) onChange;
  String hint;
  String label;
  TextInputType type;
  IconData prefixIcon;
  IconData? suffixIcon;
  VoidCallback? suffixIconPress;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field is required";
        }
        // if(type == TextInputType.visiblePassword){
        //   if(value.length < 9 ){
        //     return "password must be 9 num";
        //   }
        // }
      },
      keyboardType: type,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColors.secondaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black12, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xff34B7F1), width: 2),
        ),

        prefixIcon: Icon(
          prefixIcon,
          color: Colors.black54,
        ),

        suffixIcon: IconButton(
          onPressed:suffixIconPress,
          icon:Icon(suffixIcon)   ,
        ),

      ),
    );
  }
}
