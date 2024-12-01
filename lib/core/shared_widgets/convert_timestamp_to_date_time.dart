import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

String covertTimestampToDateTime({ required timeStamp}){
  Timestamp timestamp = timeStamp ;
  DateTime dateTime = timestamp.toDate();
  return DateFormat.jm().format(dateTime);
}
