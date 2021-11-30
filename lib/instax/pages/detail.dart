import 'package:flutter/material.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/appbar/appbar.dart';
import 'package:flutter_instax_uts_19552011318/instax/components/bottombar/base_bottom_app_bar.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/description_const.dart';
import 'package:flutter_instax_uts_19552011318/instax/constants/messages.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/camera.dart';
import 'package:flutter_instax_uts_19552011318/instax/models/description.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.camera}) : super(key: key);
  final Camera camera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.generate(context, menu: Messages.screenDetail, iconColor: camera.color),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                itemCount: DescriptionConst.getAll().length,
                itemBuilder: (context, index) =>
                  Description.getFormattedDescription(camera, DescriptionConst.getAll()[index]),
              ) 
            )
          ],
        ),
      ),
      bottomNavigationBar: BaseBottomAppBar.generate(camera: camera) 
    );
  }
}
