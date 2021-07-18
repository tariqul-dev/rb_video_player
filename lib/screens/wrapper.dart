import 'package:flutter/material.dart';
import 'package:video_player/routes/route_generator.dart';

class WrapperScreen extends StatelessWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
