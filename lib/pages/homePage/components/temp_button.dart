import 'package:art_exhibition_app/utils/db_methods.dart';
import 'package:flutter/material.dart';

Widget oButton(int index, BuildContext context) {
  DbMethods db = DbMethods();
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
        String a = await db.queries(index);
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
