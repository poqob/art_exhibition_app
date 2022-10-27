import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget oButton(int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(12.0),
        primary: Colors.white,
        side: const BorderSide(
            color: Colors.white, style: BorderStyle.solid, width: 2.0),
      ),
      onPressed: () async {
        String a = await queries(index);
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Image.network(a),
            backgroundColor: Colors.amber,
            title: Text("$index numara"),
            titleTextStyle: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        );
      },
      child: Text("buton $index"),
    ),
  );
}

//queries to database according to index numbers that db has serial.
Future<String> queries(int queryNum) async {
  var connection = PostgreSQLConnection("localhost", 5432, "postgres",
      username: "dart", password: "123456");
  await connection.open();

  List<List<dynamic>> results = await connection.query('''
  SELECT * FROM demo WHERE id=$queryNum
''');
  await connection.close();
  return results[0][1].toString();
}
