import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/splash/splash_components.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SplashComponent.getLogo(context), 
              SplashComponent.getFooter()
            ]
          )
        );
  }
}
