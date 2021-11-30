import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';

class Description {
  String title = "";
  String text = "";

  Description({this.title = "", this.text = ""});

  static dynamic getFormattedDescription(
      Camera camera, Description description) {
    var title = description.title;
    var text = description.text;
    Align parent;

    if (title == 'blank') {
      return UtilConst.getSizedBoxSparator(25);
    } else if (title == 'image') {
      return Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Align(
          alignment: Alignment.topCenter,
          child: camera.getImage(size: 180.0),
        ),
      );
    } else if (title == 'title') {
      parent = Align(
        alignment: Alignment.topLeft,
        child: camera.getFormattedType(
            titleStyle: const TextStyle(color: Colors.black, fontSize: 22),
            typeStyle:
                TextStyle(color: camera.color, fontWeight: FontWeight.bold)),
      );
    } else {
      parent = Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Column(
      children: [
        parent,
        UtilConst.getSizedBoxSparator(10.0),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
        ),
        UtilConst.getSizedBoxSparator(10.0),
      ],
    );
  }
}
