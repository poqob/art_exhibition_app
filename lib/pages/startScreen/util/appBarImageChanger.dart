import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../homePage/homeScreen.dart';

String func(int inc) {
  switch (inc % 3) {
    case 0:
      return "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/375px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg";
    case 1:
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcb6ttZeCtn6fQLbkh_H0ElEN8WGZMcpLAbQ&usqp=CAU";
    case 2:
      return "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Da_Vinci_Vitruve_Luc_Viatour.jpg/360px-Da_Vinci_Vitruve_Luc_Viatour.jpg";
    default:
      return "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/375px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg";
  }
}

Widget button({
  required String name,
  required BuildContext ctx,
  required String tittle,
  Color color = Colors.white,
  required ScrollController controller,
}) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: color,
      side: BorderSide(
        style: BorderStyle.solid,
        width: 1.6,
        color: color,
      ),
    ),
    onPressed: () {
      /*
      Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: tittle,
                )),
      );*/
      controller.animateTo(controller.positions.last.maxScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    },
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
      ),
    ),
  );
}
