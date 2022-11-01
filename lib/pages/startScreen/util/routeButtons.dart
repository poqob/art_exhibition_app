import 'package:flutter/material.dart';

Widget routeButtons({
  required String name,
  required BuildContext ctx,
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
        Navigator.of(ctx).pushNamed(route!);
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
