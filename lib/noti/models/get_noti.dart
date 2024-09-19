class Noti {
  String? content;
  String? timestamp;

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