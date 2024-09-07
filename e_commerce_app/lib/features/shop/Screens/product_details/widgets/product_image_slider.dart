import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/curved_edges/curved_edges_widgest.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WProductImageSlider extends StatelessWidget {
  const WProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return WCurvedEdgeWidget(
      child: Container(
        color: dark ? WColors.dark : WColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
                height: 400.h,
                child: const Padding(
                  padding: EdgeInsets.all(WSizes.productImageRadius),
                  child: Center(
                      child: Image(image: AssetImage(ImageConstant.watch_1))),
                )),
            // === Image Slider ===
            Positioned(
              right: 0.w,
              bottom: 30.h,
              left: WSizes.defualtSpace,
              child: SizedBox(
                height: 80.h,
                child: ListView.separated(
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: WSizes.spaceBtwItems),
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => WRoundedImage(
                        width: 80.w,
                        backgroundColor: dark ? WColors.dark : WColors.light,
                        border: Border.all(color: WColors.primary),
                        padding: const EdgeInsets.all(WSizes.sm),
                        imageUrl: ImageConstant.watch_2)),
              ),
            ),
            // AppBar Icons
            const WAppBar(
              showBackArrow: true,
              actions: [
                WCircularIcon(
                  icon: Icons.favorite,
                  color: WColors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
