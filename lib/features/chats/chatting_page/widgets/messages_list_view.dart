import 'package:chat_app/features/auth/presentation/view_model/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'my_message.dart';

class MessagesListView extends StatelessWidget {
  MessagesListView({super.key, required this.messageModelList});

  List<MessageModel> messageModelList ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: messageModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return MyMessage(messageModel: messageModelList[index],);
            },
          ),
        ],
      ),
    );
  }
}
