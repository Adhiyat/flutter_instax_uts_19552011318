import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/card/card_item.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class CardCamera {
  static Card generateCard(BuildContext context, Camera camera) => Card(
        key: ValueKey(camera.type),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(UtilConst.borderRadius)),
        color: camera.color,
        elevation: 0,
        margin: const EdgeInsets.only(
          top: UtilConst.widgetVerticalMargin, 
          bottom: UtilConst.widgetVerticalMargin, 
          right: UtilConst.cardRightMargin),
        child: CardItem.generateAll(context, camera),
      );
}
