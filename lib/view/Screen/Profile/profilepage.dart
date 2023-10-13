import 'dart:io';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/route.dart';

import 'package:image_picker/image_picker.dart';

import '../../../core/Constant/allColors.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  late File? image; // Initialize as null

  final imagepicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Initialize image as null initially
    image = null;
  }

  void uploadImage() async {
    var pickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: image != null // Check if image is not null
                  ? Image.file(image!)
                  : Image(image: AssetImage("images/page3/profile.png")),
            ),
            Container(
              margin: const EdgeInsets.only(top: 110, left: 110),
              child: IconButton(
                onPressed: uploadImage,
                icon: const Icon(Icons.add_a_photo),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Form(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextFormField(
                  enabled: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, color: primecolor),
                    hintText: "User Name",
                    hintStyle:
                        TextStyle(color: white, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: white),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                enabled: false,
                decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.mark_email_unread, color: primecolor),
                    hintStyle:
                        TextStyle(color: white, fontWeight: FontWeight.w400),
                    hintText: "Gmail or Phone Number",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    labelText: "Gmail",
                    labelStyle: TextStyle(color: white)),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SingOut",
                          style: TextStyle(fontSize: 30, color: primecolor)),
                      IconButton(
                          onPressed: () async {
                            GoogleSignIn googlesignin = GoogleSignIn();
                            await FirebaseAuth.instance.signOut();
                            googlesignin.disconnect();
                            Get.offAllNamed(Approute.Login1);
                          },
                          icon: Icon(Icons.backspace_sharp)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 200)),
                      Text("Call with Suppor :",
                          style: TextStyle(color: primecolor, fontSize: 20)),
                      Text("+962781771234",
                          style: TextStyle(color: white, fontFamily: "arabic")),
                    ],
                  ),
                ],
              )
            ],
          ),
        )),
      ],
    );
  }
}
