import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  String message;
  String id;
  Timestamp messageTime;
  MessageModel(
      {required this.message, required this.messageTime, required this.id});

  factory MessageModel.fromJson(json) {
    return MessageModel(
      message: json['message'],
      messageTime: json['createdAt'],
      id: json['id'],
    );
  }
}

//DateTime.parse(json['createdAt']
