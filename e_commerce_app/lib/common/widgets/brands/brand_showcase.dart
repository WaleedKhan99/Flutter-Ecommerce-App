import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WBrandShowcase extends StatelessWidget {
  const WBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return WRoundedContainer(
      showBorder: true,
      borderColor: WColors.grey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(WSizes.md),
      margin: const EdgeInsets.only(bottom: WSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const WBrandCard(showBorder: false),
          const SizedBox(height: WSizes.spaceBtwItems),

          /// Brand Top 3 Products Images
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final dark = WHelperfunction.isDarkMode(context);
  return Expanded(
      child: WRoundedContainer(
    height: 100.h,
    padding: const EdgeInsets.all(WSizes.md),
    margin: const EdgeInsets.only(right: WSizes.sm),
    backgroundColor: dark ? WColors.dark : WColors.light,
    child: Image(fit: BoxFit.contain, image: AssetImage(image)),
  ));
}
