import 'package:flutter/cupertino.dart';

import 'my_message.dart';

class MessagesListView extends StatelessWidget {
  const MessagesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return const MyMessage();
            },
          ),
        ],
      ),
    );
  }
}
