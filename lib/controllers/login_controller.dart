import 'package:app_habitos/models/user.dart';
import 'package:app_habitos/services/login_service.dart';

class LoginController {
  final LoginService service;

  User? user;
  String? error;

  LoginController(this.service);

  Future<void> login(String email, String password) async {

    try{
      user = await service.login(email, password);
    } catch(e){
      error = 'Erro ao realizar login';
    }

  }
}