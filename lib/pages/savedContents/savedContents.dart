import 'package:art_exhibition_app/components/cards.dart';
import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavedContentsPage extends StatefulWidget {
  const SavedContentsPage({Key? key}) : super(key: key);

  @override
  State<SavedContentsPage> createState() => _SavedContentsPageState();
}

@Todo('''
saved card contents will get in order here with different vertical sizes as two column.
''')
class _SavedContentsPageState extends State<SavedContentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: (() => Navigator.pop(context)))),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Cards(
          widget: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/375px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg"),
        ),
      ),
    );
  }
}
