import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';

class Textforgot extends StatelessWidget {
  const Textforgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(
        height: 15,
      ),
      Text("Forgot Password",
          style: TextStyle(
              color: white, fontSize: 30, fontFamily: "English")),
      SizedBox(
        height: 40,
      ),
      Text("Cheek Email",
          style: TextStyle(
              color: primecolor, fontSize: 30, fontFamily: "English")),
      SizedBox(
        height: 30,
      ),
      Text(
          "Singup with your email and password OK \n continue With Social media",
          style: TextStyle(
              color: primecolor,
              fontSize: 15,
              fontFamily: "English",
              wordSpacing: 1.2,
              letterSpacing: 0.5)),
    ]);
  }
}
