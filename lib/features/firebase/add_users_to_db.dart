import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'add_users_to_db.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> addUser({
  required String name,
  required String email,
  required String phone,
}) {
  return users.add(
    {
      'name': name,
      'email': email,
      'phone': phone,
      'owner': true,
      // 'id' : UserCredential.users.uid ,
    },
  );
}
