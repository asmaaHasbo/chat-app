import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.crisis_alert),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_sharp),
          label: 'Calls',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: AppColors.mainColor,
      // onTap: _onItemTapped,
    );
  }
}
