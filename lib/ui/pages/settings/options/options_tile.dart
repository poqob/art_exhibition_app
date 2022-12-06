import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget option({
  VoidCallback? func,
  IconData? icon,
  String? text = "",
  BuildContext? ctx,
}) {
  return Container(
    height: 85,
    margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: MaterialButton(
      onPressed: () {
        func;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 25,
            ),
            child: Icon(
              icon,
              size: 25,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.center,
            textScaleFactor: 1.2,
            softWrap: true,
            style: GoogleFonts.openSans(
              fontSize: 16,
              wordSpacing: 1,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
