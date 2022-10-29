import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';

class SearchContentPage extends StatefulWidget {
  const SearchContentPage({Key? key}) : super(key: key);

  @override
  State<SearchContentPage> createState() => SearchContentPageState();
}

@Todo('''
head up to net 'how to do search widget and list in flutter'
''')
class SearchContentPageState extends State<SearchContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: (() => Navigator.pop(context)))),
      backgroundColor: Colors.white,
    );
  }
}
