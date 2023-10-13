import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/core/Constant/route.dart';
import 'package:hajrasapp1/view/Screen/Information/addinformation.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Buypage.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Detalis.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Finshedpaymant.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Home.dart';
import 'package:hajrasapp1/view/Screen/afterhome/Shop.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

import '../../../core/function/Function.dart';
import '../../Widget/Home/aleartDialog.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

String page = 'product';
late bool _Loading;
removeitem1 i = Get.put(removeitem1());

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: GetBuilder<removeitem1>(
          init: removeitem1(),
          builder: (controller) {
            return PandaBar(
              fabIcon: Text("Buy",
                  style: TextStyle(color: white, fontFamily: "onther")),
              fabColors: [
                primecolor,
                background,
                Colors.black,
              ],
              backgroundColor: background,
              buttonColor: white,
              buttonSelectedColor: primecolor,
              buttonData: [
                PandaBarButtonData(
                  id: 'product',
                  icon: Icons.shopping_cart_rounded,
                  title: 'product',
                ),
                PandaBarButtonData(
                    id: 'details', icon: Icons.details, title: 'details'),
                PandaBarButtonData(
                    id: 'Shop',
                    icon: Icons.shopping_cart_rounded,
                    title: controller.shopitem.isEmpty
                        ? 'Shop'
                        : "Shop\ ${controller.shopitem.length}"),
                PandaBarButtonData(
                    id: 'Buy', icon: Icons.add_card_outlined, title: 'Buy'),
              ],
              onChange: (id) {
                setState(() {
                  page = id;
                });
              },
              onFabButtonPressed: () {
                if (controller.Counter == 0) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Aleart();
                    },
                  );
                }
                else {
                  setState(() {
                    page = ' ';
                  });
                }
              },
            );
          },
        ),
        body: Builder(builder: (context) {
          switch (page) {
            case 'product':
              return const Home();
            case 'details':
              return const Detalispage();
            case 'Shop':
              return Shop();
            case 'Buy':
              return Buypage();
            default:
              return AddInformation();
          }
        }));
  }
}
