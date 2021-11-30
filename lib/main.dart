import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';
import 'package:flutter_instax_uts_19552011318/instax/pages/splash.dart';

void main() {
  runApp(const Instax());
}

class Instax extends StatelessWidget {
  const Instax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Messages.title,
      home: Splash(),
    );
  }
}
