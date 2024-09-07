import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WBillingPaymentSection extends StatelessWidget {
  const WBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Column(
      children: [
        WSectionHeading(
            title: "Payment Method", buttonTitle: "Change", onPressed: () {}),
        const SizedBox(height: WSizes.spaceBtwItems / 2),
        Row(
          children: [
            WRoundedContainer(
              width: 60.w,
              height: 35.h,
              backgroundColor: dark ? WColors.light : WColors.white,
              child: const Image(
                  image: AssetImage(ImageConstant.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: WSizes.spaceBtwItems / 2),
            Text(
              "PayPal",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
