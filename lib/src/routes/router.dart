import 'package:flutter/material.dart';

import '../screens/example.dart';
import '../screens/home.dart';

Map<String, String> routes = {
  'Home': '/',
  'Example': '/example',
};

Route browserRouter(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
          builder: (context) => const Home());
    case '/example':
      return MaterialPageRoute(
          builder: (context) => const Example());
    default:
      return MaterialPageRoute(
          builder: (context) => const Home());
  }
}