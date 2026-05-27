import 'dart:convert';

import 'package:app_habitos/models/user.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final String baseUrl = 'http://192.168.3.229:3000';

  Future<User> login(String email, String password) async{
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password
      }),
    );

    // print(response.body);
    // print(response.statusCode);
    if(response.statusCode == 200){
      return User.fromJson(jsonDecode(response.body)['user']);
    }else{
      throw Exception('Erro no processo de Login');
    }
  }
}