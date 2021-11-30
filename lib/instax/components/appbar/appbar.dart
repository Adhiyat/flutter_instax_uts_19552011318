import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/appbar/appbar_menu.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/appbar/appbar_title.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';

class BaseAppBar {
  static dynamic generate(var context,
      {var menu = Messages.screenHome,
      var foregroundColor = Colors.white,
      var iconColor = Colors.white}) {
    var buttonLeft = AppBarMenu.create(
        icon: Icons.menu, backgroundColor: Colors.deepOrangeAccent);
    var buttonRight = AppBarMenu.create(
        icon: Icons.shopping_bag_outlined, backgroundColor: Colors.black);

    if (menu == Messages.screenDetail) {
      buttonLeft = Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Ink(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: iconColor)),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                size: 18,
              ),
              color: iconColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      );
      buttonRight = AppBarMenu.create(
          icon: Icons.more_vert, backgroundColor: Colors.black);
    }

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const Border(bottom: BorderSide(color: Colors.grey, width: 1)),
      title: AppBarTitle.get(context),
      leading: buttonLeft,
      actions: [buttonRight],
    );
  }
}
