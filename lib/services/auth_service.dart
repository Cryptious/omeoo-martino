import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';
import 'package:omeoo_martino/models/user_model.dart';

class AuthService {
  String baseUrl = 'http://10.0.2.2:8000/api';

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
