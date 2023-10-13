import 'package:get/get.dart';
import 'package:hajrasapp1/core/Class/product.dart';

class removeitem1 extends GetxController{
  List<int> shopitem = [];
  int Counter =0;
  void removeitem(int number) {
    bool found = true;
    for (int item in shopitem) {
      if (item == number) {
        found = false;
        break;
      }
    }
    if (!found) {
      shopitem.remove(number); Counter -= products[number-1].price;
    }

    update();
  }
  void additem(int number) {
    bool found = false;
    for (int item in shopitem) {
      if (item == number) {
        found = true;
        break;
      }
    }

    if (!found) {
      shopitem.add(number);Counter += products[number-1].price;
      print(number);
    }

    update();
  }
}
