import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import '../../../core/Constant/route.dart';
import '../OrLogin/function.dart';

class Formpage extends StatefulWidget {
  const Formpage({Key? key}) : super(key: key);

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formstate,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextFormField(
                validator: (val) {
                  if (val == "") {
                    AwesomeDialog(
                        dialogBackgroundColor: primecolor,
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'email Error',
                        desc: 'email empty',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        btnOkColor: background,
                        btnCancelColor: background)
                      ..show();
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: primecolor),
                  hintText: "Username",
                  hintStyle:
                      TextStyle(color: white, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: primecolor)),
                  labelText: "Phone number or email",
                  labelStyle: TextStyle(color: white),
                ),
              ),
              Container(
                height: 30,
              ),
              TextFormField(
                validator: (val) {
                  if (val == "") {
                    AwesomeDialog(
                        dialogBackgroundColor: primecolor,
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Password Error',
                        desc: 'Password empty',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        btnOkColor: background,
                        btnCancelColor: background)
                      ..show();
                  }
                },
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: primecolor),
                    hintStyle: TextStyle(
                      color: Colors.white, // Set the hint text color to white
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: primecolor),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: white)),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {
                      Get.toNamed(Approute.forg);
                    },
                    child: Text("Forgot password?")),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () async {
                  if (formstate.currentState!.validate()) {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email.text, password: password.text);
                      if(credential.user!.emailVerified){
                      Get.offAllNamed(Approute.Homeappbar);}
                      else{
                        AwesomeDialog(
                            dialogBackgroundColor: primecolor,
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Error email',
                            desc: 'please emailVerified in email ',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                            btnOkColor: background,
                            btnCancelColor: background)
                            .show();
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        AwesomeDialog(
                                dialogBackgroundColor: primecolor,
                                context: context,
                                dialogType: DialogType.info,
                                animType: AnimType.rightSlide,
                                title: 'Error email',
                                desc: 'No user found for that email.',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                                btnOkColor: background,
                                btnCancelColor: background)
                            .show();
                      } else if (e.code == 'wrong-password') {
                        AwesomeDialog(
                                context: context,
                                dialogBackgroundColor: primecolor,
                                dialogType: DialogType.info,
                                animType: AnimType.rightSlide,
                                title: 'Error password',
                                desc: 'Wrong password provided for that user.',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                                btnOkColor: background,
                                btnCancelColor: background)
                            .show();
                      }
                    }
                  } else {
                    AwesomeDialog(
                        dialogBackgroundColor: primecolor,
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Dialog Title',
                        desc: 'email or paseword are wrong',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        btnOkColor: background,
                        btnCancelColor: background)
                      ..show();
                  }
                },
                color: primecolor,
                elevation: 20,
                splashColor: white,
                child: Text("Login", style: TextStyle(color: white)),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Approute.singup);
                },
                child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: primecolor)),
                    child: const Text("  Create New account ? ",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
              Text(
                maxLines: 1,
                "Or Login",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: primecolor,
                    fontSize: 20,
                    fontFamily: "English"),
              ),
              Text(
                maxLines: 1,
                "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - -",
                style: TextStyle(color: primecolor, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      signInWithGoogle();
                    },
                    child: Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: AssetImage("images/page4/google.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: AssetImage("images/page4/insta.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
