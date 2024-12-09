import 'package:chat_app/features/search/search_screen.dart';
import 'package:flutter/material.dart';

List<Widget> appBarActions (context){
  return [
    IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => const SearchScreen()));
      },
      icon: const Icon(Icons.search_rounded),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    ),
  ];
}




