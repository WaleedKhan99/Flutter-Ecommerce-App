import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/styles/shadow_style.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/prouct_price_text.dart';
import 'package:e_commerce_app/features/shop/Screens/product_details/product_details.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WProductCardVertical extends StatelessWidget {
  const WProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180.w,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [WShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(WSizes.productImageRadius),
          color: dark ? WColors.dark : WColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail (Favourite button, Discount Button)
            WRoundedContainer(
              height: 100.h,
              padding: const EdgeInsets.all(WSizes.sm),
              backgroundColor: dark ? WColors.light : WColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const WRoundedImage(
                      imageUrl: ImageConstant.watch_1, applyImageRadius: true),

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

            const SizedBox(height: WSizes.spaceBtwItems / 2),
            // Details
            const Padding(
              padding: EdgeInsets.only(left: WSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WProductTitleText(
                    title: "C.K Black Edition Watch",
                    smallsize: true,
                  ),
                  SizedBox(height: WSizes.spaceBtwItems / 2),
                  WBrandTitleWithVerifiedIcon(title: "Calvin Klein")
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: WSizes.sm),
                  child: WProductPriceText(price: "85.5"),
                ),
                // Add to Cart Button
                Container(
                  decoration: BoxDecoration(
                      color: dark ? WColors.primary : WColors.dark,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(WSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(WSizes.productImageRadius))),
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
    );
  }
}
