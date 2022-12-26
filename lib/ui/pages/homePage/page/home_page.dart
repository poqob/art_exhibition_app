import 'package:art_exhibition_app/ui/pages/homePage/page/flow/flow.dart';
import 'package:art_exhibition_app/ui/pages/savedContents/page/savedContentPage.dart';
import 'package:art_exhibition_app/ui/pages/settings/settingsPage/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class localGVar {
  static int index = 0;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = const [
    FlowPage(),
    SavedContentPage(),
    Center(child: Text('search')),
    SettingsPage(),
  ]; //home,saved,search,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[localGVar.index],
      bottomNavigationBar: Container(
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
      ),
    );
  }
}
