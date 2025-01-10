import 'package:flutter/material.dart';
import '../models/message.dart';
import '../services/data_service.dart';

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];
  bool _isLoading = true;

  List<Message> get messages => _messages;
  bool get isLoading => _isLoading;

  Future<void> loadMessages() async {
    _isLoading = true;
    notifyListeners();

    _messages = await DataService.loadMessages();

    _isLoading = false;
    notifyListeners();
  } // Hapus koma di sini
}
