import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:transparent_image/transparent_image.dart';

class VideoTile extends StatelessWidget {
  final Medium? video;
  const VideoTile({required this.video, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      onTap: () {
        print(video!.width);
      },
      // video thumbnail
      leading: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        color: Colors.grey[300],
        child: FadeInImage(
          fit: BoxFit.cover,
          placeholder: MemoryImage(kTransparentImage),
          image: ThumbnailProvider(
            mediumId: video!.id,
            mediumType: video!.mediumType,
            highQuality: false,
          ),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder<File>(
            future: video!.getFile(),
            builder: (context, videoFile) {
              if (videoFile.hasData) {
                List<String> videoPath = videoFile.data!.path.split('/');
                String videoName = videoPath.last;

                return Text(
                  videoName,
                  style: TextStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text("${video!.width}x${video!.height}"),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert),
      ),
    );
  }
}
