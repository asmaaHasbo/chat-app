import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> addUser(
    {required String name, required String email, required String phone}) {
  return users
      .add({'name': name, 'email': email, 'phone': phone})
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
