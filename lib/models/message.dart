import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderID;
  final String senderEmail;
  final String receiverID;
  final String message;
  final Timestamp timestamp;

  Message(
      {required this.senderID,
      required this.message,
      required this.receiverID,
      required this.senderEmail,
      required this.timestamp});

  //convert to greed
  Map<String, dynamic> toMap() {
    return {
      'senderID': senderID,
      'receiverID': receiverID,
      'message': message,
      'senderEmail': senderEmail,
      'timestamp': timestamp
    };
  }
}
