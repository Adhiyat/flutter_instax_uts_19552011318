import 'package:flutter_instax_uts_19552011318/instax/constants/camera_const.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class CameraService {
  static List<Camera> findAll([String keyword = ""]) {
    List<Camera> cameraList = CameraConts.getAll();
    
    if (keyword.isEmpty) {
      return cameraList;
    } else {
      return cameraList.where((camera) =>
              camera.getFullName.toLowerCase()
              .contains(keyword.toLowerCase()))
              .toList();
    }
  }
}