//queries to database according to index numbers that db has serial.
import 'package:postgres/postgres.dart';

class DbMethods with adjectives {
  PostgreSQLConnection connection = PostgreSQLConnection(
      "localhost", 5432, "postgres",
      username: "dart", password: "123456");
  DbMethods() {
    connection.open();
  }

  Future<String> queries(int queryNum) async {
    List<List<dynamic>> results = await connection.query('''
  SELECT * FROM demo WHERE id=$queryNum
''');
    await connection.close();
    return results[0][1].toString();
  }

  Future<String> loginAuthUserName(String username) async {
    List<List<dynamic>> results;
    results = await connection.query('''
  SELECT _username FROM users WHERE username_id=1
''');
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

mixin adjectives {}
