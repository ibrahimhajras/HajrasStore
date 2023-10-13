import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/core/function/Function.dart';

class show extends StatelessWidget {
  final int id;

  const show(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        title: const Text("Show details about this product"),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Container(
                  decoration:
                      const BoxDecoration(color: white, shape: BoxShape.circle),
                  width: 200,
                  height: 200,
                  child: Image(image: AssetImage("${products[id - 1].image}"))),
              Text("${products[id - 1].price}\$",
                  style: const TextStyle(fontSize: 50, color: primecolor)),
              Text(products[id - 1].title,
                  style: const TextStyle(fontSize: 30, color: white)),
              const SizedBox(
                height: 9,
              ),
              Text(products[id - 1].subTitle,
                  style: const TextStyle(fontSize: 20, color: white)),
              const SizedBox(
                height: 20,
              ),
              Text(products[id - 1].description,
                  style: const TextStyle(fontSize: 15, color: white)),
              const SizedBox(
                height:50,
              ),

               GetBuilder<removeitem1>(
                 init: removeitem1(),builder: (controller) {
                 return Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     MaterialButton(onPressed: () {
                       controller.additem(id);
                     },child: Text("Add_in_Shop",style: TextStyle(color: white)),color: primecolor),
                     SizedBox(width: 50,),
                     MaterialButton(onPressed: () {
                     },child: Text("Buy",style: TextStyle(color: white)),color: primecolor)
                   ],);
               },)

            ],
          ),
        ),

    );
  }
}
