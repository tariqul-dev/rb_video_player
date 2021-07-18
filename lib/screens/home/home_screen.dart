import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/providers/albums_provider.dart';
import 'package:video_player/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => AlbumsProvider(),
        child: HomeBody(),
      ),
    );
  }
}
