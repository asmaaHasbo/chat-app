import 'package:chat_app/features/user_status/widgets/status_list_tile.dart';
import 'package:flutter/cupertino.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({super.key});
  static bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const StatusListTile(),
    );
  }
}
