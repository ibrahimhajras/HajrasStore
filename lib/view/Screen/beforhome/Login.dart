import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/core/Constant/images.dart';
import 'package:flutter/cupertino.dart';
import '../../Widget/LoginandSingup/Formpage.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Column(
                    children: [
                      Container(
                        width: 225,
                        child:  Image(image: AssetImage(ImageAsset.onbordingimage4))
                      ),
                    ],
                  )),
              SizedBox(height: 20,),
              Formpage(),
            ],
          ),
        ),
      ),
    );
  }
}