//queries to database according to index numbers that db has serial.
import 'dart:ffi';

import '../../../../utils/Todo.dart';
import 'package:postgres/postgres.dart';

class DBActions {
  PostgreSQLConnection connection = PostgreSQLConnection(
      "localhost", 5432, "postgres",
      username: "dart", password: "123456");
  DBActions() {
    connection.open();
  }

  Future<String> queries(int queryNum) async {
    List<List<dynamic>> results = await connection.query('''
  SELECT * FROM demo WHERE id=$queryNum
''');
    await connection.close();
    return results[0][1].toString();
  }

  @Todo("queries will be dynamic not only for id=1")
  Future<String> loginAuthUserName(String username) async {
    List<List<dynamic>> results;
    results = await connection.query('''
  SELECT _username FROM users WHERE username_id=1
''');
    return results[0][0];
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

  Future<String> loginAuthPassword(String username) async {
    List<List<dynamic>> results;
    results = await connection.query('''
  SELECT _password FROM users WHERE username_id=1
''');
    return results[0][0];
  }
}
