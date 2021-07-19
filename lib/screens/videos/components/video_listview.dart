import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:rb_video_player/helper/app_color.dart';
import 'package:rb_video_player/screens/videos/components/video_tile.dart';

class VideoListView extends StatelessWidget {
  final List<Medium>? videos;
  const VideoListView({required this.videos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: videos!.length,
      itemBuilder: (context, index) => Center(
        child: VideoTile(
          video: videos![index],
        ),
      ),
      separatorBuilder: (context, index) {
        return Divider(
          height: 5,
          color: AppColor.primaryColor,
        );
      },
    );
  }
}
