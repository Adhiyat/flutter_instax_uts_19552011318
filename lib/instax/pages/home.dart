import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/appbar/appbar.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/card/card_camera.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/field/search_field.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/util_conts.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';
import 'package:flutter_instax_uts_19552011318/instax/services/camera_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Camera> _cameraFound = [];

  @override
  initState() {
    _cameraFound = CameraService.findAll();
    super.initState();
  }

  searchCamera(String keyword) {
    setState(() {
      _cameraFound = CameraService.findAll(keyword);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.generate(context),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            UtilConst.getSizedBoxSparator(),
            SearchField.generate(searchCamera),
            UtilConst.getSizedBoxSparator(),
            Expanded(
              child: ListView.builder(
                itemCount: _cameraFound.length,
                itemBuilder: (context, index) =>
                  CardCamera.generateCard(context, _cameraFound[index]),
              )
            ),
          ],
        ),
      )
    );
  }
}
