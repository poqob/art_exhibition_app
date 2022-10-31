import 'dart:ui';

import 'package:art_exhibition_app/consts/consts.dart';
import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:art_exhibition_app/utils/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@Todo('''
query saved item's picture link, leading, text data about them.   //BACKEND
then create Cardd widgets.                                        //FRONTEND
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: 18,
        itemBuilder: (context, index) => Cardd(imgNum: index % 2),
      ),
    );
  }
}
