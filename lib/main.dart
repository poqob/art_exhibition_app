import 'package:art_exhibition_app/pages/auth/LogIn.dart';
import 'package:art_exhibition_app/pages/auth/signup.dart';
import 'package:art_exhibition_app/pages/homePage/homeScreen.dart';
import 'package:art_exhibition_app/pages/startScreen/StartScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const Login(),
        'signup': (context) => const Signup(),
        'home': (context) => const MyHomePage(title: 'Home2'),
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      color: Colors.black,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.black)),
      home: const SliverAppBarExample(),
    );
  }
}
