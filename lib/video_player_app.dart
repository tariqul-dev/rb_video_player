import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rb_video_player/providers/albums_provider.dart';
import 'package:rb_video_player/screens/wrapper_screen.dart';

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlbumsProvider(),
      child: WrapperScreen(),
    );
  }
}
