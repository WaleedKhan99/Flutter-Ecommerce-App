import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Screens/login/login_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    // This below line redirect to the last onboarding screen
    // pageController.jumpToPage(2);

    // When user pressed skip button,
    // this below line redirect to the Login Screen
    Get.offAll(const LoginScreen());
  }
}
