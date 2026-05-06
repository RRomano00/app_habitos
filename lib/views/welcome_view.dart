import 'package:app_habitos/widgets/background_gradient.dart';
import 'package:app_habitos/widgets/main_button.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: backgroundGradient(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.track_changes,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Gestor de Hábitos",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: mainButton(
                    text: 'Entrar',
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    function: (){
                      Navigator.of(context).pushNamed('/login');
                    }
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}