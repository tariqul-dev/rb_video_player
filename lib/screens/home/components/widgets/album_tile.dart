import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:video_player/helper/app_color.dart';

class AlbumTile extends StatelessWidget {
  final IconData icon;
  final Album album;
  const AlbumTile({required this.album, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        this.icon,
        size: 45,
      ),
      title: Text(
        this.album.name,
        style: TextStyle(fontSize: 16.4),
      ),
      subtitle: Text(
        this.album.count.toString() + " videos",
        style: TextStyle(
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
