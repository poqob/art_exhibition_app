import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../consts/consts.dart';

class Cardd extends StatefulWidget {
  final Color color;
  final int imgNum;

  const Cardd({Key? key, this.color = Colors.amber, this.imgNum = 0})
      : super(key: key);

  @override
  State<Cardd> createState() => _CarddState();
}

class _CarddState extends State<Cardd> {
  @Todo("aşağıdaki değişkenlere veri tabanından veri gelecek")
  final String imgLink = "bura dolacak!";

  final String artName = "sanat ismi gelecek";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2, right: 2, top: 2),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
        image: DecorationImage(
          opacity: 1,
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: img(num: widget.imgNum), //temporary Package
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            textScaleFactor: 1.5,
            softWrap: true,
            "Eser ismi",
            style: GoogleFonts.notoSerif(
              letterSpacing: 2,
              fontSize: 16,
              wordSpacing: 1,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
