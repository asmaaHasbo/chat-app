import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  String message;
  String id;
  String myFriendEmail;
  Timestamp messageTime;
  MessageModel({
    required this.message,
    required this.messageTime,
    required this.myFriendEmail,
    required this.id,
  });

  factory MessageModel.fromJson(json) {
    return MessageModel(
        message: json['message'],
        messageTime: json['createdAt'],
        id: json['id'],
        myFriendEmail: json['myFriendEmail']);
  }
}

//DateTime.parse(json['createdAt']
