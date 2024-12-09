import 'package:chat_app/features/search/widgets/search_text_field.dart';
import 'package:chat_app/features/users_list/users_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static String id = "searchScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchTextField(),
      ),

      body: const UsersScreen(),
    );
  }
}
