import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboarderController extends GetxController {
  static OnboarderController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index When Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump To The Specific Dot Selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index And Jump To Next Page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      //Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current Index And Jump To Last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
