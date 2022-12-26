import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: debugAppBar(),
      backgroundColor: Colors.white24,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 85,
            margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('accountSettings');
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 25,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 25,
                    ),
                  ),
                  Text(
                    "My Account",
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
          )
        ],
      ),
    );
  }
}
