import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../consts/consts.dart';

class Cardd extends StatelessWidget {
  final Color color;
  final int imgNum;
  @Todo("aşağıdaki değişkenlere veri tabanından veri gelecek")
  final String imgLink = "bura dolacak!";
  final String artName = "sanat ismi gelecek";

  const Cardd({Key? key, this.color = Colors.amber, this.imgNum = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        color: color,
        image: DecorationImage(
          opacity: 1,
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: img(num: imgNum), //temporary Package
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            textScaleFactor: 1.2,
            softWrap: true,
            "Eser ismi",
            style: GoogleFonts.lato(
              letterSpacing: 2,
              fontSize: 16,
              wordSpacing: 1,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
