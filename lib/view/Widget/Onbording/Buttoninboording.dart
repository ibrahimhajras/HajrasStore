import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/Controller/Onbording.dart';

import '../../../core/Constant/allColors.dart';



class Buttonbording extends GetView<onbordingControllerIm> {
  const Buttonbording({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<onbordingControllerIm>(
      builder: (controller) => Column(
        children: [
          MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 60),
              color: white,
              onPressed: () {

                controller.next();
              },
              child: const Text("Continue",style: TextStyle(fontWeight: FontWeight.bold),)),
          MaterialButton(
              onPressed: () {
              controller.skip();
              },
              child: const Text("Skip",style: TextStyle(fontWeight: FontWeight.bold ,color: white))),
        ],
      ),
    );
  }
}
