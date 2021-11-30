import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/button/button_custom.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class CardItem {
  static dynamic generateAll(BuildContext context, Camera camera) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            getCardText(context, camera),
            getCardImage(camera)
          ],
        ),
      );

  static dynamic generateCardItem(var child) => Container(
        margin:
            const EdgeInsets.symmetric(vertical: UtilConst.cardVerticalMargin),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      );

  static dynamic getCardText(BuildContext context, Camera camera) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          generateCardItem(const Text(
            Messages.limitedEdition,
            style: TextStyle(color: Colors.white, fontSize: 12),
          )),
          generateCardItem(Align(
            alignment: Alignment.centerLeft,
            child: camera.getFormattedType(),
          )),
          generateCardItem(Align(
            alignment: Alignment.centerLeft,
            child: camera.getFormattedPrice(),
          )),
          ButtonCustom.generate(
              backgroundColor: Colors.white, 
              fontColor: camera.color,
              context: context,
              camera: camera,
              isFunctionActive: true,
            ),
        ],
      );

  static dynamic getCardImage(Camera camera) => Positioned.fill(
        right: UtilConst.overflow,
        child: Align(
          alignment: Alignment.centerRight,
          child: camera.getImage(),
        ),
      );
}
