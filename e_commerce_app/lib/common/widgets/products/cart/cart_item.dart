import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WCartItem extends StatelessWidget {
  const WCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Row(
      children: [
        // Image
        WRoundedImage(
          imageUrl: ImageConstant.watch,
          width: 60.w,
          height: 60.h,
          padding: const EdgeInsets.all(WSizes.sm),
          backgroundColor: dark ? WColors.dark : WColors.light,
        ),
        const SizedBox(width: WSizes.spaceBtwItems),

        //Title, Price  and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WBrandTitleWithVerifiedIcon(title: "C.K"),
              const Flexible(
                child: WProductTitleText(
                    title: "Black Stylish Watch", maxLines: 1),
              ),
              // Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Color:",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: "Black",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: "Size:",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: "Medium",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ]))
            ],
          ),
        )
      ],
    );
  }
}
