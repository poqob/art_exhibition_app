import 'dart:math';

import 'package:art_exhibition_app/pages/startScreen/appbar/appBarImageChanger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarStartScreen extends StatefulWidget {
  const AppbarStartScreen({Key? key}) : super(key: key);

  @override
  State<AppbarStartScreen> createState() => _AppbarStartScreenState();
}

class _AppbarStartScreenState extends State<AppbarStartScreen> {
  bool isChanged = false;
  String paintAdress = func(Random().nextInt(21));
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: false,
      floating: false,
      expandedHeight: 450.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Art',
          style: GoogleFonts.cairo(fontSize: 50, color: Colors.white),
        ),
        background: AnimatedOpacity(
          curve: Curves.linear,
          duration: const Duration(seconds: 4),
          opacity: isChanged ? 0 : 1,
          onEnd: () => setState(() {
            isChanged = !isChanged;
            paintAdress = func(Random().nextInt(21));
          }),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isChanged = !isChanged;
                paintAdress = func(Random().nextInt(21));
              });
            },
            child: Image.network(
              paintAdress,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
