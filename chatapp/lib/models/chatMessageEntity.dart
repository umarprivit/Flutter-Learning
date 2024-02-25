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

  factory ChatMessageEntity.fromJson(Map<String, dynamic> json) {
    return ChatMessageEntity(
        author: Author.fJson(json['author']),
        id: json['id'],
        message: json['text'],
        timestamp: json['createdAt'],
        imageUrl: json['image']);
  }
}

class Author {
  String name;

  Author({required this.name});

  factory Author.fJson(Map<String, dynamic> json) {
    return Author(name: json['username']);
  }
}
