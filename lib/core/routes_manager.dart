import 'package:flutter/material.dart';

import '../view/screens/on_boarding_screen.dart';
import '../view/screens/un_know_route.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;
    if (settings.name == RoutesName.onBoardingRoute.name) {
      page = OnBoardingScreen();
    }  else {
      page = UnKnownRoute();
    }
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

enum RoutesName {
  onBoardingRoute("/");

  final String name;

  const RoutesName(this.name);
}
