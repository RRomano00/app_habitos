import 'package:app_habitos/controllers/login_controller.dart';
import 'package:app_habitos/services/login_service.dart';
import 'package:app_habitos/widgets/background_gradient.dart';
import 'package:app_habitos/widgets/main_button.dart';
import 'package:flutter/material.dart';

// stful
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final _loginController = LoginController(LoginService());

  void _login() async {
    if (_formKey.currentState!.validate()) {
      _loginController.login(_emailController.text, _passwordController.text);
    }

    if (_loginController.user != null){
      
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_loginController.error ?? 'Erro inesperado'))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundGradient(),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "Bem-vindo",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Faça login para continuar',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(label: Text("Email")),
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'Preencha o campo e-mail';
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(label: Text("Senha")),
                          obscureText: true,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Preencha o campo senha';
                            }

                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: mainButton(text: "Entrar", function: _login),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
