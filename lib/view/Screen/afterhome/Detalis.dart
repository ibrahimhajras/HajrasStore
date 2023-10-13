import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajrasapp1/core/Class/product.dart';
import 'package:hajrasapp1/view/Widget/Home/details.dart';
import '../../../core/Constant/allColors.dart';

class Detalispage extends StatelessWidget {
  const Detalispage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'English'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: background,
              elevation: 0,
              title: Text("Details product", style: TextStyle(color: white)),
              actions: [
                IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: Search());
                    },
                    icon: Icon(Icons.search))
              ],
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: background,
            body: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return details(itemproduct: index, product: products[index]);
              },
            )));
  }
}

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text("result");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    String lowercaseQuery = query.toLowerCase(); // تحويل البحث إلى حالة صغيرة

    List<Product> filteredProducts = products.where((element) =>
        element.title.toLowerCase().contains(lowercaseQuery)).toList();
// ...
    return ListView.builder(
      shrinkWrap: true,
      itemCount: query.isEmpty ? products.length : filteredProducts.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(products[index].image),
                    height: 200,width: 200,
                  ),
                  Container(
                    child: Text(style: TextStyle(fontSize: 25,color: primecolor),
                      query.isEmpty
                          ? "${products[index].title}  ${products[index].price}\$"
                          : "${filteredProducts[index].title}  ${filteredProducts[index].price}",
                    ),
                  ),

                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
