import 'package:chat_app/features/user_status/widgets/status_list_tile.dart';
import 'package:flutter/cupertino.dart';

class UserStauts extends StatelessWidget {
  const UserStauts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        StatusListTile()
      ],
    );
  }
}
