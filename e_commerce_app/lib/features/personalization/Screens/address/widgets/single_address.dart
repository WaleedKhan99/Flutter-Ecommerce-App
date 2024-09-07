import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/widgets/cutom_shapes/rounded_container.dart';

class WSingleAddress extends StatelessWidget {
  const WSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return WRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(WSizes.md),
      backgroundColor: selectedAddress
          ? WColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? WColors.dark
              : WColors.grey,
      margin: const EdgeInsets.only(bottom: WSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5.w,
            top: 0.h,
            child: Icon(selectedAddress ? Icons.check_circle_outline : null,
                color: selectedAddress
                    ? dark
                        ? WColors.light
                        : WColors.dark.withOpacity(0.5)
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Paul Walker",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: WSizes.sm / 2),
              const Text("+12 345 678",
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: WSizes.sm / 2),
              const Text("Dallas, Texas, USA")
            ],
          )
        ],
      ),
    );
  }
}
