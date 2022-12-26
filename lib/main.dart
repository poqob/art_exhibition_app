import 'package:art_exhibition_app/ui/pages/startScreen/StartScreenUi.dart';
import 'package:art_exhibition_app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  final stopwatch = Stopwatch();
  print("object1");
  runApp(const MyApp());
  //set online status 1 (db))
  //record login time.  (app-db)
  //count time. (app)
  //record logout time. (app-db)
  //update database user_data.
  //firstly we need homescreen to show some posts (app-homepage)
  //then we need options screen to manage user datas (update)
  //we needs triggers (4)

  print("object");
}

void time(Stopwatch stopwatch) {
  stopwatch.start();
  stopwatch.stop();
  stopwatch.elapsed.inSeconds;
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
