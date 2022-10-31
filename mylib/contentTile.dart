import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentTile extends StatefulWidget {
  final String contentName;
  const ContentTile({Key? key, this.contentName = ""}) : super(key: key);

  @override
  State<ContentTile> createState() => ContentTileState();
}

class ContentTileState extends State<ContentTile> {
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
          Text(
            widget.contentName,
            style: GoogleFonts.acme(color: Colors.white),
          )
        ],
      ),
    );
  }
}
