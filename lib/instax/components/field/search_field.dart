import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';

class SearchField {
  static dynamic generate(var searchFunction) => TextField(
        onChanged: searchFunction,
        style: const TextStyle(
            color: Colors.white,
          ),
        decoration: InputDecoration(
            fillColor: Colors.black,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(UtilConst.borderRadius)),
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.grey)),
      );
}
