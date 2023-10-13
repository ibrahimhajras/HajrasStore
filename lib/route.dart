import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Constant/route.dart';
import 'package:hajrasapp1/view/Screen/Homeapp/appbar.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Buypage.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Home.dart';
import 'package:hajrasapp1/view/Screen/afterhome/loading..dart';

import 'package:hajrasapp1/view/Screen/beforhome/CheekCode.dart';
import 'package:hajrasapp1/view/Screen/beforhome/Forgotpassword.dart';
import 'package:hajrasapp1/view/Screen/beforhome/Login.dart';
import 'package:hajrasapp1/view/Screen/beforhome/SingUp.dart';

Map<String, Widget Function(BuildContext)> route = {
  Approute.Login1: (context) => Login(),
  Approute.singup: (context) => SingUp(),
  Approute.home: (context) => Home(),
  Approute.forg: (context) => forgot(),
  Approute.cheek: (context) => CheekCode(),
  Approute.Homeappbar: (context) => appbar(),
  Approute.Loading: (context) => LoadingPage(),
  Approute.buy: (context) => Buypage(),
};
