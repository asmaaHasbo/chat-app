import 'package:chat_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference messages =
    FirebaseFirestore.instance.collection('messages');

addMessage({
  required message,
  // required email,
}) {
  // print(email);
  messages.add(
    {
      'message': message,
      'createdAt': DateTime.now(),
      'id': gemail,
    },
  );
}
