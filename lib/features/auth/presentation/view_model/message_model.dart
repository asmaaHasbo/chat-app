import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  String message ;
  Timestamp messageTime ;
  MessageModel({required this.message ,required this.messageTime });

  factory MessageModel.fromJson(json){
    return MessageModel(
        message: json['message'] ,
        messageTime: json['createdAt']
    );
  }
}

//DateTime.parse(json['createdAt']