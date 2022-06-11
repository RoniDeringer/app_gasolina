import 'package:app_gasolina/login_page.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'nao_abra.dart';

class AppWidget extends StatelessWidget {
  //static
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instace,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, //banner de debugger
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: AppController.instace.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/naoAbra': (context) => NaoAbra(),
          },
        );
      },
    );
  }
}
