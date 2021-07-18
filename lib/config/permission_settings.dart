import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

// Future<List<Album>> initPermission() async {
//     if (await _promptPermissionSetting()) {
//       return  await PhotoGallery.listAlbums(mediumType: MediumType.image);
//     }
//     else{
//       return [];
//     }

//   }

class PermissionSettings {
  // static bool isPermission = false;

  static Future<bool> promptPermissionSetting() async {
    if (Platform.isIOS &&
            await Permission.storage.request().isGranted &&
            await Permission.photos.request().isGranted ||
        Platform.isAndroid && await Permission.storage.request().isGranted) {
      return true;
    }
    return false;
  }








//   void getPermissionStatus() async {
//         PermissionStatus permission = await PermissionHandler()
//             .checkPermissionStatus(PermissionGroup.storage);
//         if (permission == PermissionStatus.granted) {
//         } // ideally you should specify another condition if permissions is denied
// else if (permission == PermissionStatus.denied ||
//             permission == PermissionStatus.disabled ||
//             permission == PermissionStatus.restricted) {
//           await PermissionHandler().requestPermissions([PermissionGroup.storage]);
//           getPermissionStatus();

}
