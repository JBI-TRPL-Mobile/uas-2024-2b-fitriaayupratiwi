import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/data_service.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [];
  bool _isLoading = true;

  List<User> get users => _users;
  bool get isLoading => _isLoading;

  Future<void> loadUsers() async {
    _isLoading = true;
    notifyListeners();

    _users = await DataService.loadUsers();

    _isLoading = false;
    notifyListeners();
  }
}
