import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/view/Widget/LoginandSingup/Textforgot.dart';

import '../../../core/Constant/route.dart';

class forgot extends StatelessWidget {
   forgot({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
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
                Textforgot(), // Your Textforgot widget
                SizedBox(height: 20), // Add some spacing
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person, color: primecolor),
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ),
                      labelText: "Phone number or email",
                      labelStyle: TextStyle(color: white),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    color: primecolor, // Background color of the button
                  ),
                  child: MaterialButton(
                    onPressed: () {
                     Get.toNamed(Approute.cheek);
                     FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                    },
                    child: const Text(
                      "Check",
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

