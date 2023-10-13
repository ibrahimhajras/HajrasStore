import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/Constant/allColors.dart';

class TextCheek extends StatelessWidget {
  const TextCheek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(
        height: 15,
      ),
      Text("Verification Code",
          style: TextStyle(
              color: white, fontSize: 30, fontFamily: "English")),
      SizedBox(
        height: 40,
      ),
      Text("Cheek Code",
          style: TextStyle(
              color: primecolor, fontSize: 30, fontFamily: "English")),
      SizedBox(
        height: 30,
      ),
      Text(
          "plese Enter the Digit Code Sent to \n hjres333@gmail.com",
          style: TextStyle(
              color: primecolor,
              fontSize: 15,
              fontFamily: "English",
              wordSpacing: 1.2,
              letterSpacing: 0.5)),
    ]);
  }
}
