import 'package:flutter/material.dart';
import 'package:rb_video_player/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: HomeBody(),
    );
  }
}
