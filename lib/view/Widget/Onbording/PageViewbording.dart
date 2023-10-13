import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/Controller/Onbording.dart';
import 'package:hajrasapp1/data/datasource/Static/static.dart';


import '../../../core/Constant/allColors.dart';

class PageViewBording extends GetView<onbordingControllerIm> {
  const PageViewBording({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      controller: controller.p,
      onPageChanged: (value) {
        controller.onpagechange(value);
      },
      itemCount: onbordingList.length,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Text("${onbordingList[index].title}",
              style: const TextStyle(
                  color: white, fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "${onbordingList[index].image}",
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("${onbordingList[index].body}",
              style: const TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 2,
                  letterSpacing: 1)),
        ]),
      ),
    );
  }
}
