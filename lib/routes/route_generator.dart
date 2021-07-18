import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/screens/errors/error_screen.dart';
import 'package:video_player/screens/home/home_screen.dart';
import 'package:video_player/screens/loading/loading_screen.dart';

class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/loading':
        return MaterialPageRoute(builder: (_) => LoadingScreen());
      default:
        return MaterialPageRoute(builder: (_) => ErrorScreen());
    }
  }
}
