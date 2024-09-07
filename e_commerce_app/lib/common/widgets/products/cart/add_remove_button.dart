import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constraints/size.dart';

class WProductQuantitywithAddRemoveButton extends StatelessWidget {
  const WProductQuantitywithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Row(
      children: [
        // Remove Icon Button
        WCircularIcon(
          icon: Icons.remove,
          width: 32.w,
          height: 32.h,
          size: WSizes.md,
          color: dark ? WColors.white : WColors.black,
          backgroundColor: dark ? WColors.dark : WColors.light,
        ),
        const SizedBox(width: WSizes.spaceBtwItems),
        Text("2", style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: WSizes.spaceBtwItems),
        // Add Icon Button
        WCircularIcon(
            icon: Icons.add,
            width: 32.w,
            height: 32.h,
            size: WSizes.md,
            color: WColors.white,
            backgroundColor: WColors.primary),
      ],
    );
  }
}
