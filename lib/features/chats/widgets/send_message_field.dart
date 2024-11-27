import 'package:chat_app/features/chats/widgets/circle_avater_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';

class SendMessageField extends StatelessWidget {
  const SendMessageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 280,
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Message',
                  hintStyle: TextStyle(color: AppColors.secondaryColor),
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
                  prefixIcon: const Icon(Icons.tag_faces_outlined , size: 27,),
                  prefixIconColor: AppColors.secondaryColor,
                  suffixIcon: const Icon(Icons.send),
                  suffixIconColor: AppColors.secondaryColor),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvaterIcon(
          icon: CupertinoIcons.mic_fill,
          radius: 25,
          backgroundIconColor: AppColors.backIconColor,
        )
      ],
    );
  }
}
