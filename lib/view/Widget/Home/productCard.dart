import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/core/function/Function.dart';

import 'package:hajrasapp1/view/Screen/afterhome/show.dart';


import '../../../core/Constant/allColors.dart';


class productCard extends StatelessWidget {
  const productCard(
      {Key? key, required this.itemproduct, required this.product})
      : super(key: key);
  final int itemproduct;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          height: 190,
          decoration: const BoxDecoration(
              color: background,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black54),
                  ]),
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
            ),
            Positioned(
                child: SizedBox(
              height: 250,
              width: 180,
              child: Image.asset(product.image),
            )),
            Container(
                margin: const EdgeInsets.only(
                  left: 310,
                ),
                child: GetBuilder<removeitem1>(
                  builder: (controller) {
                    return MaterialButton(
                        height: 20,
                        minWidth: 2,
                        onPressed: () {
                          print(product.id);
                          controller.additem(product.id);
                        },
                        child: const Icon(
                          Icons.add,
                          color: primecolor,
                        )
                    );
                  },
                )),
            Positioned(
                top: 40,
                left: 200,
                child: Column(
                  children: [
                    Text(
                      products[itemproduct].title,
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      products[itemproduct].subTitle,
                      style: const TextStyle(fontSize: 10),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 120,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: primecolor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          show(products[itemproduct].id)));
                                },
                                splashColor: primecolor,
                                child: Text(
                                  "${products[itemproduct].price}\$",
                                  style: const TextStyle(color: white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ))
          ]),
        ),
      ],
    );
  }
}
