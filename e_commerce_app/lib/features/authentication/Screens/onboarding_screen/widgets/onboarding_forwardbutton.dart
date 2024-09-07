import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingForwardButton extends StatelessWidget {
  const OnBoardingForwardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
                onPressed: () => OnBoardingController.instance.nextPage(),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: BorderSide.none,
                    backgroundColor: dark ? WColors.grey : WColors.dark),
                child: const Icon(Icons.arrow_forward_ios))));
  }
}
