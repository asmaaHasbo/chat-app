import 'package:chat_app/features/firebase/add_message_to_db.dart';
import 'package:chat_app/features/home_page/widgets/bottom_navigation.dart';
import 'package:chat_app/features/home_page/widgets/floating_butting.dart';
import 'package:chat_app/features/user_profile/user_profile.dart';
import 'package:chat_app/features/user_status/user_status.dart';
import 'package:chat_app/features/users_list/users_screen.dart';
import 'package:flutter/material.dart';

import '../../core/themes/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [
    const UsersScreen(),
    const UserStatus(),
    const UserProfile()
  ];

  List<bool> isShowList = [
    UsersScreen.isShow,
    UserStatus.isShow,
    UserProfile.isShow
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'WhatsUp',
          style: Styles.textStyle18.copyWith(fontSize: 24),
        ),
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
        toolbarHeight: 70,
        actions: [
          const Icon(Icons.search_rounded),
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
        ],
      ),
      drawer: const Drawer(),
      body: screens[currentIndex],
      floatingActionButton:
          isShowList[currentIndex] ? floatingButton(context) : null,
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}