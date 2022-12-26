import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BBar(),
    );
  }
}

class BBar extends StatelessWidget {
  const BBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GNav(
          onTabChange: (value) => router(value, context),
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

void router(int value, BuildContext context) {
  switch (value) {
    case 0:
      Navigator.popAndPushNamed(context, 'home');
      break;
    case 1:
      Navigator.popAndPushNamed(context, 'home');
      break;
    case 2:
      Navigator.popAndPushNamed(context, 'home');
      break;
    case 3:
      Navigator.pushNamed(context, 'settings');
      break;
    default:
      Navigator.popAndPushNamed(context, 'home');
  }
}
