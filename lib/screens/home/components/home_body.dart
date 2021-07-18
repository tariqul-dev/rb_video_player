import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/providers/albums_provider.dart';
import 'package:video_player/screens/home/components/widgets/view_albums.dart';
import 'package:video_player/screens/loading/loading_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AlbumsProvider>(
      builder: (context, albumProvider, child) {
        if (albumProvider.getAlbums!.isEmpty) {
          return LoadingScreen();
        } else {
          return ViewAlbums(albums: albumProvider.getAlbums);
        }
      },
    );
  }
}
