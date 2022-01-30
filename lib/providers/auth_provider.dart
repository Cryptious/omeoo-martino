import 'package:flutter/material.dart';
import 'package:omeoo_martino/models/user_model.dart';
import 'package:omeoo_martino/services/auth_service.dart';

class AuthProvider with ChangeNotifier {

  late UserModel _user ;
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user =
          await AuthService().login(
            email: email, 
            password: password,
          );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
