import 'package:flutter/material.dart';

class AppBarMenu {
  static dynamic create({var backgroundColor = Colors.black, var icon = Icons.menu, var foregroundColor = Colors.white, var iconColor = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        child: Icon(icon, size: 20, color: iconColor,),
      ),
    );
  }
}
