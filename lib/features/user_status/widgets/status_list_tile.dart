import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class StatusListTile extends StatelessWidget {
  const StatusListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        // width: 100,
        // height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.mainColor, width: 3)),
        child: const CircleAvatar(
          // radius: 200,
          backgroundImage: AssetImage(
            'assets/images/img.jpg',
          ),
        ),
      ),
      title: Text(
        'Asmaa Elsaeed',
        style: Styles.textStyle18,
      ),
      subtitle: Text(
        'Today , 3:00 AM',
        style: TextStyle(color: AppColors.secondaryColor),
      ),
    );
  }
}
