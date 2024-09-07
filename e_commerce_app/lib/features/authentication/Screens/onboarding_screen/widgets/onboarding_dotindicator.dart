import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = WHelperfunction.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 180.h),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ColorTransitionEffect(
              activeDotColor: dark ? Colors.white : Colors.black, dotHeight: 6),
        ),
      ),
    );
  }
}
