import 'package:flutter/material.dart';

import 'package:art_exhibition_app/utils/Todo.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

@Todo('''
random table-statue provider will be coded like api.
Work types:
  1-The art work will be changed in some seconds with soft animation.
  2-Will us provide art works from db??? how it is possible ??
''')
class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Hello",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome back again",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 101, 67, 49),
                        width: 3,
                        style: BorderStyle.solid),
                  ),
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcb6ttZeCtn6fQLbkh_H0ElEN8WGZMcpLAbQ&usqp=CAU"),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    side: const BorderSide(style: BorderStyle.solid, width: 1),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Log In",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    side: const BorderSide(style: BorderStyle.solid, width: 1),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Sıgn Up",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
