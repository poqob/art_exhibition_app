import 'package:art_exhibition_app/ui/pages/homePage/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BBar extends StatefulWidget {
  const BBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BBar> createState() => _BBarState();
}

class _BBarState extends State<BBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GNav(
          onTabChange: (value) {
            setState(() {
              localGVar.index = value;
            });
          },
          selectedIndex: 0,
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          rippleColor: Colors.transparent,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 10,
          padding: const EdgeInsets.all(13),
          tabs: const [
            GButton(icon: Icons.home_outlined, text: "home"),
            GButton(
              icon: Icons.bookmark_outline,
              text: "saved",
            ),
            GButton(
              icon: Icons.search,
              text: "search",
            ),
            GButton(
              icon: Icons.settings,
              text: "settings",
            )
          ],
        ),
      ),
    );
  }
}
