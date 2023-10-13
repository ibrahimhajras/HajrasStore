import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/view/Screen/Profile/profilepage.dart';

import '../../Widget/Home/productCard.dart';

List<int> a = [];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'English'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            endDrawer: const SafeArea(
              child: Drawer(
                  backgroundColor: background,
                  shadowColor: primecolor,
                  child: profilepage()),
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: background,
            appBar: AppBar(
              elevation: 0,
              title: Text("Hajras Store", style: TextStyle(fontSize: 22)),
              backgroundColor: background,
            ),
            body: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return productCard(
                  itemproduct: index,
                  product: products[index],
                );
              },
            )));
  }
}
