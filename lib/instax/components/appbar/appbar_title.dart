import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/Assets.dart';

class AppBarTitle {
  static dynamic get(var context) {
    return Center(
        child: Image.asset(
          Assets.banner,
          cacheWidth: int.parse(
          (MediaQuery.of(context).size.width * 0.30).toStringAsFixed(0)
        ),
      )
    );
  }
}
