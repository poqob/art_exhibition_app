import 'package:art_exhibition_app/pages/auth/logIn.dart';
import 'package:art_exhibition_app/pages/auth/signup.dart';
import 'package:art_exhibition_app/pages/homePage/homeScreen.dart';
import 'package:art_exhibition_app/pages/savedContents/savedContents.dart';
import 'package:art_exhibition_app/pages/searchContent/search_content_page.dart';
import 'package:art_exhibition_app/pages/settings/settings.dart';
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
        'home': (context) => const FlowPage(title: 'Art Exhibition'),
        'bbr0': (context) => const FlowPage(title: 'Art Exhibition'),
        'bbr1': (context) => const SearchContentPage(),
        'bbr2': (context) => const SavedContentsPage(),
        'bbr3': (context) => const SettingsPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      color: Colors.black,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.black)),
      home: const SliverAppBarExample(),
    );
  }
}
