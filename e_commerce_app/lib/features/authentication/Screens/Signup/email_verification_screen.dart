import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/login_signup_reusable_items/success_screen.dart';
import 'package:e_commerce_app/features/authentication/Screens/login/login_screen.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailVerigicationScreen extends StatelessWidget {
  const EmailVerigicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(WSizes.defualtSpace),
        child: Column(
          children: [
            // Image
            Image(
                fit: BoxFit.cover,
                height: 0.4.sh,
                width: 0.8.sw,
                image: AssetImage(ImageConstant.verification)),
            const SizedBox(
              height: WSizes.spaceBtwItems,
            ),

            // Title & SUbtitle
            Text(
              WText.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: WSizes.spaceBtwItems,
            ),
            Text(
              "support@waleedk1599@gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: WSizes.spaceBtwItems,
            ),
            Text(
              WText.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: WSizes.spaceBtwSection,
            ),
            // Button

            WCustomElevatedButton(
                title: WText.wcontinue,
                onPressed: () => Get.to(() => SuccessScreen(
                    image: ImageConstant.verification,
                    title: WText.yourAccountCreatedTitle,
                    subtitle: WText.changeYourPasswordSubTitle,
                    onPressed: () => Get.to(() => LoginScreen())))),

            const SizedBox(
              height: WSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: Text(WText.resendEmail)))
          ],
        ),
      )),
    );
  }
}
