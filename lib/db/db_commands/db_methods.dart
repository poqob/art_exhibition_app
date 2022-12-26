//queries to database according to index numbers that db has serial.

import 'dart:async';

import 'package:postgres/postgres.dart';

class DBActions {
  PostgreSQLConnection connection = PostgreSQLConnection(
      "localhost", 5432, "postgres",
      username: "dart", password: "123456");
  DBActions() {
    connection.open();
  }

//User auth
  Future<bool> auth(String username, String password) async {
    var results;
    results = await connection.query('''
  SELECT users.auth('$username','$password');
''');
    print(results[0][0]);
    return results[0][0];
  }
}
