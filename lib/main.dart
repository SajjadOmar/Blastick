import 'package:flutter/material.dart';
import 'package:flutter_blasteck/pages/logIn.dart';
import 'package:flutter_blasteck/pages/signUp.dart';
import 'package:flutter_blasteck/pages/splash.dart';
import 'package:flutter_blasteck/pages/store.dart';
import 'package:flutter_blasteck/pages/thank.dart';
import 'package:flutter_blasteck/pages/welcome.dart';

import 'pages/main4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
        "/main": (context) => MainScreen(),
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/thank': (context) => ThankScreen(),
        '/store': (context) => Store(),
      },
    );
    return materialApp;
  }
}

HomePage() {}
