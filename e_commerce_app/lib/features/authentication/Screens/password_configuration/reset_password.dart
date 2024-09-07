import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
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
                WText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),

              Text(
                WText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwSection,
              ),

              // Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(WText.done))),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text(WText.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
