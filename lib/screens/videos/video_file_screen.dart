import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:rb_video_player/components/app_bar.dart';
import 'package:rb_video_player/screens/loading/loading_screen.dart';
import 'package:rb_video_player/screens/videos/components/video_listview.dart';
class VideoFileScreen extends StatelessWidget {
  final Album album;
  const VideoFileScreen({required this.album, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllAppBar.secondaryAppBar(album.name),
      body: FutureBuilder<MediaPage>(
        future: album.listMedia(),
        builder: (context, media) {
          if (media.hasData) {
            return VideoListView(videos: media.data!.items);
          } else {
            return LoadingScreen();
          }
        },
      ),
    );
  }
}
