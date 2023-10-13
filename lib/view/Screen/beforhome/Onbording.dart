import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hajrasapp1/Controller/Onbording.dart';
import 'package:hajrasapp1/view/Widget/Onbording/Buttoninboording.dart';
import 'package:hajrasapp1/view/Widget/Onbording/PageViewbording.dart';
import 'package:hajrasapp1/view/Widget/Onbording/dotinBordingpage.dart';

import '../../../core/Constant/allColors.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onbordingControllerIm());
    // TODO: implement build
    return GetBuilder<onbordingControllerIm>(builder: (controller) => Scaffold(
        appBar: AppBar(
            title: Text("Welcome in Application"),
            centerTitle: true,
            backgroundColor: primecolor,
            leading: IconButton(
                onPressed: () {
                     controller.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                ))),
        backgroundColor: background,
        body: SafeArea(
          // size Telephone
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: PageViewBording(),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        dotinBording(),
                        const SizedBox(
                          height: 15,
                        ),
                        const Buttonbording(),
                      ],
                    ))
              ],
            ))));
  }
}
