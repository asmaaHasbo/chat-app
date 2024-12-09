import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key ,
    required this.currentIndex,
    required this.onTap
  });
  int currentIndex ;
   Function(int) onTap ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:  const <BottomNavigationBarItem>[
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
      currentIndex: currentIndex ,
      selectedItemColor: AppColors.mainColor,
      onTap: onTap  ,
    );
  }
}
