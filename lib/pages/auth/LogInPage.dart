import 'package:art_exhibition_app/pages/homePage/homeScreen.dart';
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
  bool _toogle = false;
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
                widthFactor: 1,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1200),
                  opacity: !_toogle ? 1.0 : 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 101, 67, 49),
                          width: 3,
                          style: BorderStyle.solid),
                    ),
                    child: Image.network(
                      func(_toogle),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button(name: "Log In", tittle: 'Logged In', ctx: context),
                const SizedBox(
                  width: 20,
                ),
                button(name: "Sign Up", tittle: 'Sign Up', ctx: context)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String func(bool toogle) {
  if (!toogle) {
    return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcb6ttZeCtn6fQLbkh_H0ElEN8WGZMcpLAbQ&usqp=CAU";
  }
  return "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Da_Vinci_Vitruve_Luc_Viatour.jpg/360px-Da_Vinci_Vitruve_Luc_Viatour.jpg";
}

Widget button(
    {required String name, required BuildContext ctx, required String tittle}) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      side: const BorderSide(style: BorderStyle.solid, width: 1),
    ),
    onPressed: () {
      Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: tittle,
                )),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
      ),
    ),
  );
}
