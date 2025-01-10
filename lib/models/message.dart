class Message {
  final int id;
  final String sender;
  final String message;

  Message({required this.id, required this.sender, required this.message});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      sender: json['sender'],
      message: json['message'],
    );
  }
}
