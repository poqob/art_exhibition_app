import 'package:art_exhibition_app/ui/pages/auth/logIn/log_in_page.dart';
import 'package:art_exhibition_app/ui/pages/auth/signUp/sign_up.dart';
import 'package:art_exhibition_app/ui/pages/homePage/page/home_page.dart';

import 'package:art_exhibition_app/ui/pages/settings/settingsPage/settings.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (context) => const Login(),
  'signup': (context) => const Signup(),
  'home': (context) => const HomePage(),
  'bbr3': (context) => const SettingsPage(),
};
