import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';
import 'onpressed_send_msg_fu.dart';

class SendMessageField extends StatelessWidget {
  SendMessageField({
    super.key,
    required this.scrollController,
    required this.myFriendEmail,
  });
  final ScrollController scrollController;

  TextEditingController controller = TextEditingController();

  String? message;
  String myFriendEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: TextField(
        controller: controller,
        onSubmitted: (value) {
          onPressedSendIcon(myFriendEmail, value, controller, scrollController);
        },
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
          prefixIcon: const Icon(
            Icons.tag_faces_outlined,
            size: 27,
          ),
          prefixIconColor: AppColors.secondaryColor,
          suffixIconColor: AppColors.secondaryColor,
          suffixIcon: IconButton(
            onPressed: () {
              onPressedSendIcon(
                  myFriendEmail, controller.text, controller, scrollController);
            },
            icon: const Icon(Icons.send),
          ),
        ),
      ),
    );
  }
}
