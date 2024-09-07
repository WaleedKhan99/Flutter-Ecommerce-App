import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/onboarding_dotindicator.dart';
import 'widgets/onboarding_forwardbutton.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: [
            // Horizontal Scrollable Page
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  image: ImageConstant.onboarding_1,
                  title: WText.OnBoardingTitle1,
                  substitle: WText.OnBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: ImageConstant.onboarding_2,
                  title: WText.OnBoardingTitle2,
                  substitle: WText.OnBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: ImageConstant.onboarding_3,
                  title: WText.OnBoardingTitle3,
                  substitle: WText.OnBoardingSubTitle3,
                ),
              ],
            ),

            // Skip Button
            OnBoardingSkip(),

            // Dot Navigation SmoothPageIndicator
            OnBoardingDotIndicator(),

            // Circular Button
            OnBoardingForwardButton(),
          ],
        ),
      ),
    );
  }
}
