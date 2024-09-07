import 'package:e_commerce_app/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/prouct_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WProductAttributes extends StatelessWidget {
  const WProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Column(
      children: [
        // === Selected Attributes Pricing & Description ===
        WRoundedContainer(
          padding: const EdgeInsets.all(WSizes.md),
          backgroundColor: dark ? WColors.dark : WColors.grey.withOpacity(0.2),
          child: Column(
            children: [
              // Title, Price & Stock
              Row(
                children: [
                  const WSectionHeading(
                      title: "Variaiton", showActionButton: false),
                  const SizedBox(width: WSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WProductTitleText(title: "Price", smallsize: true),
                      Row(
                        children: [
                          //Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: WSizes.spaceBtwItems),

                          // Sale Price
                          const WProductPriceText(price: "20")
                        ],
                      ),
                      // Stock
                      Row(
                        children: [
                          const WProductTitleText(
                              title: "Stock ", smallsize: true),
                          Text("In Stock",
                              style: Theme.of(context).textTheme.titleSmall),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // Variation Description
              const WProductTitleText(
                  title: "Description of the Product",
                  smallsize: true,
                  maxLines: 4)
            ],
          ),
        ),
        const SizedBox(
          height: WSizes.spaceBtwItems,
        ),

        // === Attributes ===

        Column(
          children: [
            WSectionHeading(
              title: "Colors",
              showActionButton: false,
            ),
            SizedBox(height: WSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                WChoiceChip(
                    text: "Blue", selected: true, onSelected: (value) {}),
                WChoiceChip(
                    text: "Black", selected: false, onSelected: (value) {}),
                WChoiceChip(
                    text: "Brown", selected: false, onSelected: (value) {})
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WSectionHeading(title: "Strap Size", showActionButton: false),
            SizedBox(height: WSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                WChoiceChip(
                    text: "Small", selected: true, onSelected: (value) {}),
                WChoiceChip(
                    text: "Medium", selected: false, onSelected: (value) {}),
                WChoiceChip(
                    text: "Large", selected: false, onSelected: (value) {})
              ],
            )
          ],
        )
      ],
    );
  }
}
