import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/image_widget/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/prouct_price_text.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/enum.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WProductMetaData extends StatelessWidget {
  const WProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & sale Price
        Row(
          children: [
            // Sale Tag
            WRoundedContainer(
              radius: WSizes.sm,
              backgroundColor: WColors.secondary.withOpacity(0.6),
              padding: const EdgeInsets.symmetric(
                  horizontal: WSizes.sm, vertical: WSizes.xs),
              child: Text(
                "30%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: WColors.black),
              ),
            ),
            const SizedBox(width: WSizes.spaceBtwItems),

            // Price
            Text("\$230",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: WSizes.spaceBtwItems),
            const WProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwSection / 1.5),
        // Title
        const WProductTitleText(title: "Calvin Klein Watch"),
        const SizedBox(height: WSizes.spaceBtwSection / 2.5),

        // Stock Status
        Row(
          children: [
            const WProductTitleText(title: "Status "),
            Text(
              "In-Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: WSizes.spaceBtwSection / 1.5),
          ],
        ),

        // Brand
        Row(
          children: [
            WCircularImage(
              image: ImageConstant.watch_2,
              width: 32.w,
              height: 32.h,
              overlayColor: dark ? WColors.white : WColors.black,
            ),
            const WBrandTitleWithVerifiedIcon(
              title: "Celvin Klein",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
