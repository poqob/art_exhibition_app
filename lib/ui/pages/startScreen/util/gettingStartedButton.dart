import '../../../../utils/Todo.dart';
import 'package:flutter/material.dart';

@Todo("page route system will be developed.")
Widget gettingStartedButton({
  required BuildContext ctx,
  ScrollController? controller,
  String? route,
}) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      side: const BorderSide(
        style: BorderStyle.solid,
        width: 1.6,
        color: Colors.white,
      ),
    ),
    onPressed: () {
      try {
        controller!.animateTo(controller.positions.last.maxScrollExtent,
            duration: const Duration(seconds: 2), curve: Curves.easeIn);
      } catch (e) {}
    },
    child: const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        "Getting Started",
        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
      ),
    ),
  );
}
