import 'dart:ui';

import 'package:art_exhibition_app/consts/consts.dart';
import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:art_exhibition_app/utils/Card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@Todo('''
saved card contents will get in order here with different vertical sizes as two column.
''')
class SavedContentsPage extends StatefulWidget {
  const SavedContentsPage({Key? key}) : super(key: key);

  @override
  State<SavedContentsPage> createState() => _SavedContentsPageState();
}

class _SavedContentsPageState extends State<SavedContentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        children: [
          Cardd(
            color: Colors.redAccent,
            imgNum: 1,
          ),
          Cardd(
            color: Colors.black26,
          ),
          Cardd(
            color: Colors.red,
          ),
          Cardd(
            color: Colors.green,
          ),
          Cardd(
            color: Colors.white,
          ),
          Cardd(
            color: Colors.pink,
          ),
          Cardd(),
          Cardd(),
          Cardd(),
          Cardd(),
          Cardd(),
        ],
      ),
    );
  }
}