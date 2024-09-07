import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WCircularImage extends StatelessWidget {
  const WCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = WSizes.sm,
    this.isNetworkImage = false,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
// If image background color is null then switch it to light and dark mode color design.
          color: backgroundColor ??
              (WHelperfunction.isDarkMode(context)
                  ? WColors.black
                  : WColors.white),
          borderRadius: BorderRadius.circular(100),
        ), // BoxDecoration
        child: Center(
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor,
          ), // Image
        ) // Center
        );
  }
  // Container
}


















//   @override
//   Widget build(BuildContext context) {
//     final dark = WHelperfunction.isDarkMode(context);
//     return Container(
//       width: 56.w,
//       height: 56.h,
//       padding: const EdgeInsets.all(WSizes.sm),
//       decoration: BoxDecoration(
//           color: dark ? WColors.black : WColors.white,
//           borderRadius: BorderRadius.circular(100.r)),
//       child: Center(
//         child: Image(
//           image: AssetImage(ImageConstant.watch_3),
//           color: dark ? WColors.white : WColors.dark,
//         ),
//       ),
//     );
//   }
// }
