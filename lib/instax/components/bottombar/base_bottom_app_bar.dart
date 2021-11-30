import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class BaseBottomAppBar {
  static dynamic createButton({required Camera camera}) => Container(
        margin: const EdgeInsets.only(right: 10),
        child: SizedBox(
          height: 45,
          width: 100,
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: camera.color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: const Text(
                "Buy Now",
                style: TextStyle(color: Colors.white),
              )),
        ),
      );

  static dynamic createPrice({required Camera camera}) => Container(
        margin: const EdgeInsets.only(left: 10),
        child: camera.getFormattedPrice(
            signStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
            priceStyle: const TextStyle(color: Colors.black)),
      );

  static dynamic generate({required Camera camera}) => Container(
      height: 70,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 1.3))),
      child: BottomAppBar(
        elevation: 100,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [createPrice(camera: camera), createButton(camera: camera)],
        ),
      ));
}
