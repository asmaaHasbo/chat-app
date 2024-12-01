import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetUsersFromDb extends StatelessWidget {
  GetUsersFromDb({super.key});

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc('24nNHaVGRc9ELE8jnXp7').get() ,
        builder: (context , snapshot){
          if(snapshot.hasError){
            return const Text('error');
          }
          else if(snapshot.hasData){
            Map<String, dynamic> data = snapshot.data!.data() as  Map<String, dynamic>  ;
            print(data['name']);
            return Text(data['name']);
          }

            return const Text('lodad');

        }
    );
  }
}



