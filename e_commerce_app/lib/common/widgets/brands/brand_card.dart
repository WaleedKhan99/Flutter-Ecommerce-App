import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/image_widget/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/enum.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WBrandCard extends StatelessWidget {
  const WBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: WRoundedContainer(
        padding: const EdgeInsets.all(WSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // ==== Icon ====
            Flexible(
              child: WCircularImage(
                isNetworkImage: false,
                image: ImageConstant.watch_2,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? WColors.white : WColors.black,
              ),
            ),

            const SizedBox(width: WSizes.spaceBtwItems / 2),

            // ==== Text ====
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WBrandTitleWithVerifiedIcon(
                    title: "Cavin Klein", brandTextSize: TextSizes.large),
                Text("150 Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium)
              ],
            )
          ],
        ),
      ),
    );
  }
}
