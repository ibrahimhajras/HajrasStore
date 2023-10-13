import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/allColors.dart';
import 'package:hajrasapp1/view/Screen/Information/paymantController.dart';
import 'package:hajrasapp1/view/Widget/LoginandSingup/Textforgot.dart';

import '../../../core/Constant/route.dart';
import '../../../core/function/Savedata.dart';
import 'AddLocation.dart';

class AddInformation extends StatelessWidget {
  AddInformation({Key? key}) : super(key: key);
  final PaymentController controller = Get.put(PaymentController());
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
                SizedBox(
                  height: 20,
                ),
                Text("CheckOut",
                    style: TextStyle(
                        fontSize: 30, fontFamily: "English", color: white)),
                // Your Textforgot widget
                SizedBox(height: 20),
                // Add some spacing
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
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
                          labelText: "Username",
                          labelStyle: TextStyle(color: white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon:
                              Icon(Icons.location_city, color: primecolor),
                          hintText: "add Name city",
                          hintStyle: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                          labelText: "Amman",
                          labelStyle: TextStyle(color: white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon:
                              Icon(Icons.numbers_sharp, color: primecolor),
                          hintText: "PhoneNumber",
                          hintStyle: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                          labelText: "Phone number",
                          labelStyle: TextStyle(color: white),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                    Icons.stacked_line_chart_rounded,
                                    color: primecolor),
                                hintText: "Street",
                                hintStyle: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                                labelText: "Street",
                                labelStyle: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.architecture, color: primecolor),
                                hintText: "Floor",
                                hintStyle: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                                labelText: "Floor",
                                labelStyle: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
                       Get.to(AddLocation);
                    },
                    child: const Text(
                      "Add Location",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.makePayment(amount: '5', currency: 'Jo');
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: primecolor,
                                blurRadius: 10,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Make Payment',
                              style: TextStyle(color: background, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
