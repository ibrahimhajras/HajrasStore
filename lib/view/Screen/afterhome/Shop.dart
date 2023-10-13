import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';

import '../../../core/function/Function.dart';

class Shop extends StatelessWidget {
  Shop({Key? key}) : super(key: key);

  removeitem1 i = Get.put(removeitem1(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "English"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: background,
            elevation: 0,
            title: Container(
                alignment: Alignment.center,
                child: Text("${i.Counter}\$ price ")),
          ),
          backgroundColor: background,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: GetBuilder<removeitem1>(
              init: removeitem1(),
              builder: (controller) {
                return ListView.builder(
                    itemCount: controller.shopitem.length,
                    itemBuilder: (context, index) {
                      int itemNumber = controller.shopitem[index];
                      if (itemNumber >= 0 && itemNumber <= products.length) {
                        return Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      width: 150,
                                      height: 150,
                                      child: Image(
                                          image: AssetImage(
                                              products[itemNumber - 1].image))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                          "${products[itemNumber - 1].title}  ",
                                          style: const TextStyle(
                                              fontSize: 20, color: primecolor)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                          "${products[itemNumber - 1].subTitle}  ",
                                          style: const TextStyle(
                                              fontSize: 12, color: primecolor)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                          "${products[itemNumber - 1].price}\$",
                                          style: const TextStyle(
                                              fontSize: 18, color: primecolor)),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        controller.removeitem(itemNumber);
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) => Shop()));
                                      },
                                      icon: const Icon(
                                          Icons.remove_shopping_cart_rounded)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        );
                      } else {
                        return Text("Invalid item number: $itemNumber");
                      }
                    });
              },
            ),
          )),
    );
  }
}
