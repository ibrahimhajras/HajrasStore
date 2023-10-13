import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h3m_shimmer_card/h3m_shimmer_card.dart';
import 'package:hajrasapp1/view/Screen/Homeapp/appbar.dart';

import '../../../core/Constant/allColors.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    // Delay the navigation by 3 seconds
    Future.delayed(const Duration(milliseconds: 1000), () {
      navigateToOtherPage();
    });
  }

  // Function to navigate to another page
  void navigateToOtherPage() {
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              appbar(), // Replace OtherPage with your actual target page
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Hajras Store", style: TextStyle(fontSize: 22)),
        backgroundColor: background,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              // Adjust margins
              width: double.infinity,
              height: 190,
              decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 25,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                  ),
                  const Positioned(
                    child: SizedBox(
                      height: 250,
                      width: 180,
                      child:
                          CircularProgressIndicator(), // Replace with your loading indicator
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 310,
                    ),
                    child: MaterialButton(
                      height: 20,
                      minWidth: 2,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        color: primecolor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 200,
                    child: Column(
                      children: [
                        const Text(
                          "Loading", // Replace with your loading text
                          style: TextStyle(fontSize: 17),
                        ),
                        const Text(
                          "Please wait...", // Replace with your loading message
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
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
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    splashColor: primecolor,
                                    child: const Text(
                                      "\$0",
                                      // Replace with your loading price or leave as-is
                                      style: TextStyle(color: white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
