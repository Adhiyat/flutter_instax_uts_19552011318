import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/assets.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class CameraConts {
  static Camera cameraMint = Camera(
      'Mini Mint 7+', 49.90, const Color.fromRGBO(110, 178, 160, 1), Assets.cameraMint);
  static Camera cameraBlue = Camera(
      'Mini Blue 7+', 50.90, const Color.fromRGBO(116, 161, 196, 1), Assets.cameraBlue);
  static Camera cameraCoral = Camera(
      'Mini Coral 7+', 51.90, const Color.fromRGBO(173, 71, 58, 1), Assets.cameraChoral);
  static Camera cameraPink = Camera(
      'Mini Pink 7+', 52.90, const Color.fromRGBO(205, 149, 146, 1), Assets.cameraPink);
  static Camera cameraLavender = Camera(
      'Mini Lavender 7+', 53.90, const Color.fromRGBO(129, 96, 138, 1), Assets.cameraLavender);

  static List<Camera> getAll() {
    return [cameraMint, cameraBlue, cameraCoral, cameraPink, cameraLavender];
  }
}
