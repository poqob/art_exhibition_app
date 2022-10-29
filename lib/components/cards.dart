import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatefulWidget {
  final Widget widget;
  const Cards({Key? key, required this.widget}) : super(key: key);

  @override
  State<Cards> createState() => CardsState();
}

class CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 140,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blueAccent,
            Colors.redAccent,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Stack(
        children: [
          SizedBox(
            child: widget.widget,
            height: 200,
            width: 180,
          ),
          Text(
            'data',
            style: GoogleFonts.acme(color: Colors.white),
          )
        ],
      ),
    );
  }
}
