
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/route.dart';

import '../../../core/Constant/allColors.dart';

class formpageSing extends StatelessWidget {
  formpageSing({Key? key}) : super(key: key);
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          TextFormField(
              controller: username,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person, color: primecolor),
                hintText: "User Name",
                hintStyle: TextStyle(color: white, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
                labelText: "User Name",
                labelStyle: TextStyle(color: white),
              )),
          Container(
            height: 30,
          ),
          TextFormField(
            controller: email,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mark_email_unread, color: primecolor),
                hintStyle: TextStyle(color: white, fontWeight: FontWeight.w400),
                hintText: "Gmail or Phone Number",
                border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                labelText: "Gmail or Phone Number",
                labelStyle: TextStyle(color: white)),
          ),
          Container(
            height: 30,
          ),
          TextFormField(
            controller: password,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock, color: primecolor),
                hintStyle: TextStyle(color: white, fontWeight: FontWeight.w400),
                hintText: "Password",
                border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                labelText: "Password",
                labelStyle: TextStyle(color: white)),
          ),
          Container(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    if(FirebaseAuth.instance.currentUser!.emailVerified){
                    Get.offAllNamed(Approute.Homeappbar);
                    }
                    else{
                      Get.offAllNamed(Approute.Login1);
                     FirebaseAuth.instance.currentUser!.sendEmailVerification();
                    }
                  } on FirebaseAuthException catch (e) {
                    AwesomeDialog(
                        context: context,
                        dialogBackgroundColor: primecolor,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Error Sing up',
                        desc: 'The email or password is empty',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        btnOkColor: background,
                        btnCancelColor: background)
                        .show();
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                      AwesomeDialog(
                              context: context,
                              dialogBackgroundColor: primecolor,
                              dialogType: DialogType.info,
                              animType: AnimType.rightSlide,
                              title: 'Error message',
                              desc: 'The password provided is too weak.',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                              btnOkColor: background,
                              btnCancelColor: background)
                          .show();
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                      AwesomeDialog(
                              context: context,
                              dialogBackgroundColor: primecolor,
                              dialogType: DialogType.info,
                              animType: AnimType.rightSlide,
                              title: 'Error message',
                              desc:
                                  'The account already exists for that email.',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                              btnOkColor: background,
                              btnCancelColor: background)
                          .show();
                    }
                  } catch (e) {
                    print(e);
                    AwesomeDialog(
                        context: context,
                        dialogBackgroundColor: primecolor,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Error message',
                        desc: 'check password provided for that user.',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        btnOkColor: background,
                        btnCancelColor: background)
                        .show();
                  }
                },
                color: primecolor,
                elevation: 20,
                splashColor: white,
                child: const Text("Login", style: TextStyle(color: white)),
              )
            ],
          )
        ],
      ),
    ));
  }
}
