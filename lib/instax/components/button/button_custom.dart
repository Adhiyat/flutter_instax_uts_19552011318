import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';
import 'package:flutter_instax_uts_19552011318/instax/pages/detail.dart';

class ButtonCustom {
  static dynamic generate({
    var backgroundColor = Colors.white,
    var fontColor = Colors.black,
    required BuildContext context,
    var isFunctionActive = false,
    var camera,
  }) =>
      Container(
        margin:
            const EdgeInsets.symmetric(vertical: UtilConst.cardVerticalMargin),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: isFunctionActive
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(camera: camera),
                        ),
                      );
                    }
                  : () {},
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(UtilConst.borderRadius))),
              child: Text(
                Messages.buy,
                style: TextStyle(color: fontColor),
              )),
        ),
      );
}
