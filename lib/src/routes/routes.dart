import 'package:assignment_5/src/auth/login.dart';
import 'package:assignment_5/src/nav/navigation.dart';
import 'package:assignment_5/src/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static String splash = "/";
  static String home = "home";
  static String nav = "nav";

  static String login = "login";
}

Map<String, WidgetBuilder> routes = {
  Routes.nav: (context) => const NaviGationSection(),
  Routes.login: (context) => const LoginPage(),
  Routes.splash: (context) => const SplashScreen(),
};
