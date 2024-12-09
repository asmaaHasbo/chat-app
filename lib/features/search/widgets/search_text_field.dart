import 'package:flutter/material.dart';

Widget searchTextField (){
 return TextField(
   decoration: InputDecoration(
     hintText: 'search...',
     border: OutlineInputBorder(
       borderSide: const BorderSide(color: Colors.white),
       borderRadius: BorderRadius.circular(40),
     ),
     enabledBorder: OutlineInputBorder(
       borderSide: const BorderSide(color: Colors.black12),
       borderRadius: BorderRadius.circular(40),
     ),
     focusedBorder: OutlineInputBorder(
       borderSide: const BorderSide(color: Colors.black12),
       borderRadius: BorderRadius.circular(40),
     ),
   ),
 );
}
