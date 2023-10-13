import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/view/Widget/LoginandSingup/formpageSing.dart';

import '../../../core/Constant/images.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      child: Image(image: AssetImage(ImageAsset.onbordingimage5))
                    ),
                  ],
                )),
            SizedBox(height: 20,),
            formpageSing(),
          ],
        ),
      ),
    );
  }
}
