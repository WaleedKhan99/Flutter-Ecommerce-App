import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WBottomAddToCart extends StatelessWidget {
  const WBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: WSizes.defualtSpace, vertical: WSizes.defualtSpace / 2),
      decoration: BoxDecoration(
          color: dark ? WColors.dark : WColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(WSizes.cardRadiusLg),
            topRight: Radius.circular(WSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              WCircularIcon(
                icon: Icons.remove,
                backgroundColor: WColors.dark,
                width: 40.w,
                height: 40.h,
                color: WColors.white,
              ),
              const SizedBox(width: WSizes.spaceBtwItems),
              Text("2", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: WSizes.spaceBtwItems),
              WCircularIcon(
                icon: Icons.add,
                backgroundColor: WColors.black,
                width: 40.w,
                height: 40.h,
                color: WColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(WSizes.md),
                  backgroundColor: WColors.black,
                  side: const BorderSide(color: WColors.black)),
              child: const Text("Add to Cart"))
        ],
      ),
    );
  }
}
