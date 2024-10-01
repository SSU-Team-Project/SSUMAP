<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';

class Noti {
  String? content;
  Timestamp? timestamp;
=======
class Noti {
  String? content;
  String? timestamp;
>>>>>>> 58434bdc752c2f73fedffbd556cbe4f2622ae62c

  Noti({
    this.content,
    this.timestamp,
  });

  Noti.fromJson(Map<String, dynamic> json)
      : this(
<<<<<<< HEAD
    content: json['content'],
    timestamp: json['timestamp'],
  );
=======
          content: json['content'],
          timestamp: json['timestamp'],
        );
>>>>>>> 58434bdc752c2f73fedffbd556cbe4f2622ae62c
}