import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart'; // Import provider Anda
import '../models/message.dart'; // Import model Message

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    super.initState();
    // PENTING: Gunakan addPostFrameCallback untuk memanggil provider setelah build selesai
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // listen: false karena kita hanya ingin memanggil fungsi, BUKAN rebuild widget
      Provider.of<MessageProvider>(context, listen: false).loadMessages();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: Consumer<MessageProvider>(
        builder: (context, messageProvider, child) {
          if (messageProvider.isLoading) {
            // Tampilkan indikator loading jika data sedang dimuat
            return const Center(child: CircularProgressIndicator());
          } else if (messageProvider.messages.isEmpty) {
            // Tampilkan pesan jika data kosong
            return const Center(child: Text('Tidak ada pesan.'));
          } else {
            // Tampilkan daftar pesan jika data tersedia
            return ListView.builder(
              itemCount: messageProvider.messages.length,
              itemBuilder: (context, index) {
                final Message message = messageProvider.messages[index];
                return Card(
                  // Menggunakan Card untuk tampilan list yang lebih baik
                  margin:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: ListTile(
                    leading: const CircleAvatar(
                      // Menambahkan avatar (opsional)
                      child: Icon(Icons.person),
                    ),
                    title: Text(message.sender),
                    subtitle: Text(message.message),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
