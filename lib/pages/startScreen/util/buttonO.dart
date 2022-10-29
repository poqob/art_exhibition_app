import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';

@Todo("page route system will be developed.")
Widget buttonO({
  required String name,
  required BuildContext ctx,
  Color color = Colors.white,
  ScrollController? controller,
  Widget? page,
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
      try {
        controller!.animateTo(controller.positions.last.maxScrollExtent,
            duration: const Duration(seconds: 4), curve: Curves.easeIn);
      } catch (e) {}
      try {
        MaterialPageRoute(builder: (ctx) => page!);
      } catch (e) {}
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
