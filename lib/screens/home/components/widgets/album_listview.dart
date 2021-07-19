import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:rb_video_player/screens/home/components/widgets/album_tile.dart';

class AlbumsListView extends StatelessWidget {
  final List<Album>? albums;

  const AlbumsListView({required this.albums, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albums!.length,
      itemBuilder: (context, index) {
        return AlbumTile(album: albums![index], icon: Icons.folder);
      },
    );
  }
}
