import 'package:app_habitos/views/login_view.dart';
import 'package:app_habitos/views/welcome_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// stles
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeView(),
        '/login': (context) => LoginView(),
      },
    );    
  }
}