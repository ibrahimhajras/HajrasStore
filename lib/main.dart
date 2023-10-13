import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hajrasapp1/route.dart';
import 'package:hajrasapp1/view/Screen/Homeapp/appbar.dart';
import 'package:hajrasapp1/view/Screen/Information/AddLocation.dart';
import 'package:hajrasapp1/view/Screen/Information/addinformation.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Home.dart';
import 'package:hajrasapp1/view/Screen/beforhome/Login.dart';
import 'package:hajrasapp1/view/Screen/beforhome/Onbording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
  'Your Publishable Key';

  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyBdw3IBtPBFE8PrIFZMY89oiS0Ja-m5vDk",
            appId: "1:818344021360:android:1e18db6b664f74b8bb13b5",
            messagingSenderId: "818344021360",
            projectId: "hajras-aeb7f",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "English",
        primaryColor: Color(0xffB967C7),
      ),
      home: (FirebaseAuth.instance.currentUser != null &&
              FirebaseAuth.instance.currentUser!.emailVerified)
          ? appbar()
          : Onbording(),
      routes: route,
    );
  }
}
