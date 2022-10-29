import 'package:flutter/material.dart';

Widget LogInB({
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
      controller.animateTo(controller.positions.last.maxScrollExtent,
          duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
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

Widget SignUpB({
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
      controller.animateTo(controller.positions.last.maxScrollExtent,
          duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
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
