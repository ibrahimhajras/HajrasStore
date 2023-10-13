import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hajrasapp1/core/Constant/route.dart';
import 'package:hajrasapp1/data/datasource/Static/static.dart';

abstract class onbordingController extends GetxController {
  next();

  onpagechange(int i);

  back();

  skip();
}

int size = onbordingList.length - 1;

class onbordingControllerIm extends onbordingController {
  int curentpage = 0;
  late PageController p;

  @override
  next() {
    if (curentpage < size) {
      curentpage++;
      p.animateToPage(curentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    } else {
      Get.offAllNamed(Approute.Login1);
    }
  }

  @override
  onpagechange(int i) {
    // TODO: implement onpagechange
    curentpage = i;
    update();
  }

  @override
  void onInit() {
    p = PageController();
    super.onInit();
  }

  @override
  back() {
    // TODO: implement back
    if (curentpage > 0 || curentpage < size) {
      curentpage--;
      p.animateToPage(curentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
    if(curentpage<=0){
      curentpage =0;
    }
  }
    @override
    skip() {
      // TODO: implement skip
      return Get.offAllNamed(Approute.Login1);
    }

}
