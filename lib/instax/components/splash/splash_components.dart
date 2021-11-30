import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/Assets.dart';

class SplashComponent {
  static dynamic getLogo(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Image.asset(Assets.logo)),
        ],
      ),
    );
  }

  static dynamic getFooter() {
    return SafeArea(
        top: false,
        child: ButtonBar(
          children: [
            SizedBox(
                width: 900,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Made With ♥ | ',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                    children: [
                      TextSpan(
                          text: '© 2021',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )
              )
          ],
        )
      );
  }
}
