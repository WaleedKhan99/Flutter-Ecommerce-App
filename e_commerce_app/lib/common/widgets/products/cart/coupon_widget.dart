import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WCoupanCode extends StatelessWidget {
  const WCoupanCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return WRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? WColors.dark : WColors.light,
      padding: const EdgeInsets.only(
          top: WSizes.sm, bottom: WSizes.sm, right: WSizes.sm, left: WSizes.md),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Have a promo code? Enter here",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          // Button
          SizedBox(
              width: 80.w,
              child: WCustomElevatedButton(title: "Apply", onPressed: () {}))
        ],
      ),
    );
  }
}
