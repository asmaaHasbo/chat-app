import 'package:chat_app/features/search/widgets/search_screen_body.dart';
import 'package:chat_app/features/search/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static String id = "searchScreen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? searchInput = "";

  @override
  Widget build(BuildContext context) {
    // print('in '+ searchInput );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: searchTextField(
            (value) {
              searchInput = value;
              setState(() {});
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10),
        child: SearchScreenBody(searchInput: searchInput!),
      ),
    );
  }
}
