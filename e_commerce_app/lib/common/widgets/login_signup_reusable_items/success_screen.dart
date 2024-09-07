import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/features/authentication/Screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/constraints/size.dart';
import '../../../utils/constraints/text_string.dart';
import '../custom_button/custom_elevated_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: WSpacingStyle.paddingwithAppBarHeight * 2,
        child: Column(children: [
          // Image
          Image(
              fit: BoxFit.cover,
              height: 0.4.sh,
              width: 0.8.sw,
              image: AssetImage(image)),
          const SizedBox(
            height: WSizes.spaceBtwItems,
          ),

          // Title & SUbtitle
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: WSizes.spaceBtwItems,
          ),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: WSizes.spaceBtwSection,
          ),

          // Button
          WCustomElevatedButton(
            title: WText.wcontinue,
            onPressed: () => Get.to(() => const LoginScreen()),
          ),
          const SizedBox(
            height: WSizes.spaceBtwItems,
          ),
        ]),
      ),
    ));
  }
}
