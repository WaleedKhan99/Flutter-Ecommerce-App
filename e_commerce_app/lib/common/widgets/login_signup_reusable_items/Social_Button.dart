import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_constant/image_constant.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  height: 40.h,
                  width: 40.w,
                  image: AssetImage(ImageConstant.googlelogo))),
        ),
        const SizedBox(
          width: WSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  height: 40.h,
                  width: 40.w,
                  image: AssetImage(ImageConstant.facebooklogo))),
        ),
      ],
    );
  }
}
