import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30.h,
        right: WSizes.spaceBtwItems,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Text("Skip")));
  }
}
