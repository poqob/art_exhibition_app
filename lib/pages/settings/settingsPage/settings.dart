import 'package:art_exhibition_app/pages/settings/options/options_tile.dart';
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
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.openSans(
            fontSize: 20,
            wordSpacing: 1,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: (() => Navigator.pop(context))),
      ),
      backgroundColor: Colors.white24,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          option(icon: Icons.person, text: "My Account"),
        ],
      ),
    );
  }
}
