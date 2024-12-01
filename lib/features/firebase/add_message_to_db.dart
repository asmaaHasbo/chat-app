import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference messages =
FirebaseFirestore.instance.collection('messages');

addMessage({ required message }){
  messages.add({
    'message': message,
    'createdAt' :DateTime.now()
  });

  // print()
}