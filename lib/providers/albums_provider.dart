import 'package:flutter/widgets.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:rb_video_player/config/permission_settings.dart';

class AlbumsProvider with ChangeNotifier {
  List<Album> _albums = [];
  late bool isPermit;

  AlbumsProvider() {
    getPermission();
    
    
  }

  void getPermission() async {
    isPermit = await PermissionSettings.promptPermissionSetting();
    print("Permit: $isPermit");
    initAlbums();
  }

  void initAlbums() async {
    if (isPermit) {
      // print("Permit: $isPermit");
      _albums = await PhotoGallery.listAlbums(mediumType: MediumType.video);
      notifyListeners();
      // return _albums;
    }
  }

  void rebuildWidget() {
    notifyListeners();
  }

  // get albums
  List<Album>? get getAlbums => this._albums;
}
