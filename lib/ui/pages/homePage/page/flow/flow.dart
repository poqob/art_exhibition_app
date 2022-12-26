import 'package:art_exhibition_app/db/db_commands/db_methods.dart';
import 'package:flutter/material.dart';

class FlowPage extends StatefulWidget {
  const FlowPage({Key? key}) : super(key: key);

  @override
  State<FlowPage> createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage> {
  DBActions dbActions = DBActions();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
              height: 350,
              width: 200,
              color: Colors.black,
              child: Center(
                child: Text(
                  "$index",
                  style: const TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
