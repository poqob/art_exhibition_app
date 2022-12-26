//queries to database according to index numbers that db has serial.

import 'dart:async';
import 'dart:collection';
import 'dart:ffi';

import 'package:postgres/postgres.dart';

class DBActions with UserData {
  PostgreSQLConnection connection = PostgreSQLConnection(
      "localhost", 5432, "postgres",
      username: "dart", password: "123456");
  DBActions() {
    connection.open();
  }

//User auth
  Future<bool> auth(String username, String password) async {
    var results;
    var userid;
    results = await connection.query('''
  SELECT users.auth('$username','$password');
''');
    results[0][0] == true
        ? wellcome(username, password, connection)
        : print(results[0][0]);
    await printerrr();
    return results[0][0];
  }

  void close() async {
    await goodbye();
    //connection.query("select * fonksiyon");
    //connection.close();
  }
}

mixin UserData {
  PostgreSQLConnection? conn_;
  String? username_;
  String? password_;
  DateTime? lastLoggedIn;
  DateTime? lastLogOut;
  dynamic totalElapsedTime;
  dynamic userid;
  dynamic online_status;
  final stopwatch = Stopwatch();

  Future<void> wellcome(
      String username, String password, PostgreSQLConnection conn) async {
    username_ = username;
    password_ = password;
    conn_ = conn;
    lastLoggedIn = DateTime.now();
    stopwatch.start();

    //find out
    String sq =
        "select user_id from users.users where user_name='$username' and user_password='$password';";
    userid = await conn.query(sq);

    onlineStatus();
    await set_online_status(conn, true);
  }

  Future<void> onlineStatus() async {
    online_status = await conn_?.query(
        "select online_status from users.user_data where user_id='${userid[0][0]}';");
  }

  Future<void> set_online_status(
      PostgreSQLConnection conn, bool boolean) async {
    String sq =
        "update users.user_data set online_status=$boolean where user_id='${userid[0][0]}';";
    await conn.query(sq);
  }

  Future<void> printerrr() async {
    print(
        "username=$username_ password=$password_ user_id=${userid[0][0]} online status=${online_status[0][0]}");
  }

  Future<void> goodbye() async {
    stopwatch.stop();
    lastLogOut = DateTime.now();
    String sq =
        "select total_minute_consuming from users.user_data where user_id='${userid[0][0]}';";
    totalElapsedTime = await conn_?.query(sq);
    totalElapsedTime += stopwatch.elapsed.inMinutes;
    //setting total consumed time
    sq =
        "update users.user_data set total_minute_consuming='$totalElapsedTime' where user_id= '${userid[0][0]}' ;";
    await conn_?.query(sq);

    //setting last logout date
    sq =
        "update users.user_data set last_logout='$lastLogOut where user_id='$userid'";
    await conn_?.query(sq);

    //setting online status 0
    sq =
        "update users.user_data set online_status=false where user_id='$userid';";

    await conn_?.query(sq);
  }
}
