import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';

class details extends StatelessWidget {
  const details({Key? key, required this.itemproduct, required this.product})
      : super(key: key);
  final int itemproduct;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: 500,
                    decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)))),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset("${product.image}"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 300),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.cached,
                                color: primecolor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.cached,
                                  color: Colors.black)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.cached,
                                color: primecolor,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Container(
                          width: double.infinity,
                          height: 30,
                          margin: const EdgeInsets.only(left: 200, top: 50),
                          child: Text(product.title,
                              style: const TextStyle(fontSize: 20))),
                      Container(
                          margin: const EdgeInsets.only(left: 225, top: 10),
                          child: Text("price : ${product.price}",
                              style:
                                  TextStyle(color: primecolor, fontSize: 25))),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Text("detalis about product",
              style: TextStyle(color: white, fontSize: 15)),
          const SizedBox(
            height: 10,
          ),
          Text(product.description,
              style: const TextStyle(
                  color: white,
                  fontSize: 14,
                  wordSpacing: 1,
                  letterSpacing: 0.5)),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
