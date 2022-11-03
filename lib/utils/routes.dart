import 'package:art_exhibition_app/pages/auth/logIn/log_in.dart';
import 'package:art_exhibition_app/pages/auth/signUp/sign_up.dart';
import 'package:art_exhibition_app/pages/homePage/homeScreen.dart';
import 'package:art_exhibition_app/pages/savedContents/savedContents.dart';
import 'package:art_exhibition_app/pages/searchContent/search_content_page.dart';
import 'package:art_exhibition_app/pages/settings/settingsPage/settings.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (context) => const Login(),
  'signup': (context) => const Signup(),
  'home': (context) => const FlowPage(title: 'Art Exhibition'),
  'bbr0': (context) => const FlowPage(title: 'Art Exhibition'),
  'bbr1': (context) => const SearchContentPage(),
  'bbr2': (context) => const SavedContentsPage(),
  'bbr3': (context) => const SettingsPage(),
};
