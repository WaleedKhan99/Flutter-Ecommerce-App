import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constraints/size.dart';

class WVerticalImageText extends StatelessWidget {
  const WVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = WColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: WSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(WSizes.sm),
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? WColors.dark : WColors.white),
                  borderRadius: BorderRadius.circular(100.r)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? WColors.light : WColors.dark,
                ),
              ),
            ),
            // Text
            const SizedBox(height: WSizes.spaceBtwItems / 2),
            SizedBox(
              width: 50.w,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
