import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/Constant/allColors.dart';

class Aleart extends StatelessWidget {
  const Aleart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("The Shop is Empty",
          style: TextStyle(
            color: white,
            fontFamily: "English",
          )),
      content: Text("You Need Go to Shop",style: TextStyle(
        color: white,
        fontFamily: "English",
      )),
      backgroundColor: background,
      actions: [
        TextButton(onPressed: () {

        }, child: Text("Ok",style: TextStyle(
          color: primecolor,
          fontFamily: "English",
        )),),
        TextButton(onPressed: () {
          Get.back();
        }, child: Text("Cancel",style: TextStyle(
          color: primecolor,
          fontFamily: "English",
        )),)
      ],
    );
  }
}
