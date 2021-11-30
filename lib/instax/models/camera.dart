import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';

class Camera {
  String type = "";
  double price = 0;
  String assetsPath = "";
  Color color = Colors.white;

  Camera(this.type, this.price, this.color, this.assetsPath);

  String get getFullName => Messages.title + " " + type;

  dynamic getFormattedType(
          {TextStyle titleStyle =
              const TextStyle(color: Colors.white, fontSize: 16),
          TextStyle typeStyle = const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)}) =>
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: Messages.title + " ",
          style: titleStyle,
          children: [
            TextSpan(text: type, style: typeStyle),
          ],
        ),
      );

  dynamic getFormattedPrice(
          {TextStyle signStyle =
              const TextStyle(color: Colors.white, fontSize: 22),
          TextStyle priceStyle = const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)}) =>
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "\$ ",
          style: signStyle,
          children: [
            TextSpan(text: price.toStringAsFixed(2), style: priceStyle),
          ],
        ),
      );

  dynamic getImage({var size = 130.0}) => Image.asset(assetsPath, width: size);
}
