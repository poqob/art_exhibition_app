import 'contentTile.dart';
import 'package:art_exhibition_app/ui/consts/consts.dart';
import 'package:art_exhibition_app/ui/utils/Todo.dart';
import 'package:flutter/material.dart';

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
          _Card(
            color: Colors.cyan,
            imgNum: 1,
          ),
          _Card(
            color: Colors.black26,
          ),
          _Card(
            color: Colors.red,
          ),
          _Card(
            color: Colors.green,
          ),
          _Card(
            color: Colors.white,
          ),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Color color;
  final int imgNum;
  _Card({Key? key, this.color = Colors.amber, this.imgNum = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          image: DecorationImage(
            opacity: 1,
            colorFilter: ColorFilter.mode(color, BlendMode.color),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: img(num: imgNum),
          ),
        ),
      ),
    );
  }
}
