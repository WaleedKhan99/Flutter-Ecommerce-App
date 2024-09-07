import 'package:e_commerce_app/features/shop/Screens/cart/cart.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WCartCounter extends StatelessWidget {
  const WCartCounter({
    super.key,
    this.iconColor,
    required this.onPressed,
    this.counterBgColor,
    this.counterTextColor,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: counterBgColor ?? (dark ? WColors.dark : WColors.dark),
                borderRadius: BorderRadius.circular(100.r)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: counterTextColor ??
                        (dark ? WColors.light : WColors.light)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
