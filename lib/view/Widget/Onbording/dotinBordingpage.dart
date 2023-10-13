import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/Controller/Onbording.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/data/datasource/Static/static.dart';

class dotinBording extends StatelessWidget {
  const dotinBording({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<onbordingControllerIm>(builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onbordingList.length,
                (index) => AnimatedContainer(
              duration: Duration(milliseconds: 900),
              width: controller.curentpage == index ? 25 :7,
              height: 6,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: primecolor,
                  borderRadius: BorderRadius.circular(10)),
            ))
      ],
    ),);
  }
}
