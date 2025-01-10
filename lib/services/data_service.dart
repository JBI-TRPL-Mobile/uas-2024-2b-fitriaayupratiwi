import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/message.dart';
import '../models/user.dart';

class DataService {
  static Future<List<Message>> loadMessages() async {
    final String response =
        await rootBundle.loadString('lib/data/datamessage.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Message.fromJson(json)).toList();
  }

  static Future<List<User>> loadUsers() async {
    final String response =
        await rootBundle.loadString('lib/data/datauser.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => User.fromJson(json)).toList();
  }
}
