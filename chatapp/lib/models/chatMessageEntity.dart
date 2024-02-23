class ChatMessageEntity {
  String id;
  String message;
  int timestamp;
  String? imageUrl;
  Author author;


  ChatMessageEntity({
    required this.id,
    required this.message,
    required this.timestamp,
    this.imageUrl,
    required this.author,
  });
}

class Author {
  String name;

  Author({required this.name});
}
