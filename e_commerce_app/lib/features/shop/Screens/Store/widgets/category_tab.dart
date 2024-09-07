import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/brands/brand_showcase.dart';

class WCategoryTab extends StatelessWidget {
  const WCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(WSizes.defualtSpace),
            child: Column(
              children: [
                /// Brands
                const WBrandShowcase(
                  images: [
                    ImageConstant.watch,
                    ImageConstant.watch_3,
                    ImageConstant.watch_2,
                  ],
                ),

                const SizedBox(height: WSizes.spaceBtwItems),

                /// Products
                WSectionHeading(
                  title: "Hope You Like",
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(height: WSizes.spaceBtwItems),
                WGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const WProductCardVertical()),
                const SizedBox(height: WSizes.spaceBtwSection),
              ],
            ),
          ),
        ]);
  }
}
