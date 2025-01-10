import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final List<String> messages = [
    "Hai.. apa kabar",
    "Bagaimana kabarmu",
    "bagaimana keadaanmu",
    // Tambahkan pesan lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(messages[index]),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          // Tambahkan item lainnya untuk navigasi
        ],
      ),
    );
  }
}
