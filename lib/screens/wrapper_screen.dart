import 'package:flutter/material.dart';
import 'package:rb_video_player/routes/route_generator.dart';

class WrapperScreen extends StatelessWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => AlbumsProvider(),
    //   child: MaterialApp(
    //     initialRoute: '/',
    //     onGenerateRoute: RouteGenerator.routeGenerator,
    //   ),
    // );
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
