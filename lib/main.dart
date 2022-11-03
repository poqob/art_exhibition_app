import 'package:art_exhibition_app/pages/startScreen/StartScreen.dart';
import 'package:art_exhibition_app/utils/routes.dart';
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
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      color: Colors.black,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.black)),
      home: const SliverAppBarExample(),
    );
  }
}
