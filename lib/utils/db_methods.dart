//queries to database according to index numbers that db has serial.
import 'package:postgres/postgres.dart';

class DbMethods with adjectives {
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
}

mixin adjectives {}
