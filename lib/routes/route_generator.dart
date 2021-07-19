import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:rb_video_player/screens/errors/error_screen.dart';
import 'package:rb_video_player/screens/home/home_screen.dart';
import 'package:rb_video_player/screens/loading/loading_screen.dart';
import 'package:rb_video_player/screens/videos/video_file_screen.dart';

class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/loading':
        return MaterialPageRoute(builder: (_) => LoadingScreen());
      case '/videos':
        if (args is Album) {
          return MaterialPageRoute(
            builder: (_) => VideoFileScreen(
              album: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => ErrorScreen());
      default:
        return MaterialPageRoute(builder: (_) => ErrorScreen());
    }
  }
}
