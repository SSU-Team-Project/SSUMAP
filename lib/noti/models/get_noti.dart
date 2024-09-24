import 'package:cloud_firestore/cloud_firestore.dart';

class Noti {
  String? content;
  Timestamp? timestamp;

  Noti({
    this.content,
    this.timestamp,
  });

  Noti.fromJson(Map<String, dynamic> json)
      : this(
          content: json['content'],
          timestamp: json['timestamp'],
        );
}