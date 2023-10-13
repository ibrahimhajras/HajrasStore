import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';

import '../../../core/Constant/route.dart';
import '../../Widget/LoginandSingup/TextCheek.dart';


class CheekCode extends StatelessWidget {
  const CheekCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextCheek(), // Your Textforgot widget
                SizedBox(height: 20), // Add some spacing
                OtpTextField(
                  numberOfFields: 5,
                  borderColor: primecolor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),
                SizedBox(height: 30,),
                Container(
                  width: 250,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    color:primecolor, // Background color of the button
                  ),
                  child: MaterialButton(
                    onPressed: () {
                         Get.offAllNamed(Approute.Login1);
                    },
                    child: const Text(
                      "Confirm",
                      style: TextStyle(color: white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
