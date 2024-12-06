import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

CollectionReference messages =
    FirebaseFirestore.instance.collection('messages');
final user = FirebaseAuth.instance.currentUser;
addMessage({
  required message,
}) {
  messages.add(
    {
      'message': message,
      'createdAt': DateTime.now(),
      'id': user?.email,
    },
  );
}
