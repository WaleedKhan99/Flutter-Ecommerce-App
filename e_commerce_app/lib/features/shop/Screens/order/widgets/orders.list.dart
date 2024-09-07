import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WOrderListItems extends StatelessWidget {
  const WOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, index) =>
          const SizedBox(height: WSizes.spaceBtwItems),
      itemBuilder: (_, index) => WRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(WSizes.md),
        backgroundColor: dark ? WColors.dark : WColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row-1
            Row(
              children: [
                // 1- Icon
                const Icon(Icons.shopping_bag_outlined),
                const SizedBox(width: WSizes.spaceBtwItems / 2),

                // 2- Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: WColors.primary, fontWeightDelta: 1),
                      ),
                      Text("25 June 2024",
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                // 3-Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right,
                    size: WSizes.iconSm,
                  ),
                )
              ],
            ),
            const SizedBox(height: WSizes.spaceBtwItems),
            // Row-2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1- Icon
                      const Icon(Icons.shopping_bag_outlined),
                      const SizedBox(width: WSizes.spaceBtwItems / 2),

                      // 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text("#23456",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // 1- Icon
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: WSizes.spaceBtwItems / 2),

                      // 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date",
                                style: Theme.of(context).textTheme.labelMedium),
                            Text("30 June 2024",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
