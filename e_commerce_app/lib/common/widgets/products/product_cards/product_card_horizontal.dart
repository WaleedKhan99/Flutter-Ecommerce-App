import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/prouct_price_text.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WProductCardHorizontal extends StatelessWidget {
  const WProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Container(
      width: 310.w,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(WSizes.productImageRadius),
          color: dark ? WColors.dark : WColors.light),
      child: Row(
        children: [
          // Thumbnail
          WRoundedContainer(
            height: 120.h,
            padding: const EdgeInsets.all(WSizes.md),
            backgroundColor: dark ? WColors.dark : WColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                SizedBox(
                  height: 120.h,
                  width: 120.w,
                  child: const WRoundedImage(
                      imageUrl: ImageConstant.watch, applyImageRadius: true),
                ),
                // Sale Tag
                Positioned(
                  top: 12.h,
                  child: WRoundedContainer(
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
                ),
                // Favourite Icon Button
                Positioned(
                  top: 0.h,
                  right: 0.w,
                  child: const WCircularIcon(
                    icon: Icons.favorite,
                    color: WColors.red,
                  ),
                )
              ],
            ),
          ),
          // Details
          SizedBox(
            width: 170.w,
            child: Padding(
              padding: const EdgeInsets.only(top: WSizes.sm, left: WSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WProductTitleText(
                        title: "C.K Luxury Watch",
                        smallsize: true,
                      ),
                      SizedBox(height: WSizes.spaceBtwItems / 2),
                      WBrandTitleWithVerifiedIcon(title: "C.K")
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing
                      const Flexible(child: WProductPriceText(price: "250")),

                      // Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                            color: WColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(WSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    WSizes.productImageRadius))),
                        child: SizedBox(
                            width: WSizes.iconLg * 1.2.w,
                            height: WSizes.iconLg * 1.2.h,
                            child: const Center(
                                child: Icon(Icons.add, color: WColors.white))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
