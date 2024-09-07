import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/search_container.dart';
import 'package:e_commerce_app/features/shop/Screens/all_products/all_products.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/cutom_shapes/primary_header_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const WPrimaryHeaderContainer(
              child: Column(
                children: [
                  // ==== Appbar ====
                  WHomeAppBar(),
                  SizedBox(height: WSizes.spaceBtwSection),

                  // ==== Searchbar ====
                  WSearchContainer(text: 'Search'),
                  SizedBox(height: WSizes.spaceBtwSection),

                  // ==== Categories ====
                  Padding(
                    padding: EdgeInsets.only(left: WSizes.defualtSpace),
                    child: Column(
                      children: [
                        // === Section Heading ===
                        WSectionHeading(
                            title: 'Famous Categories',
                            textColor: WColors.white,
                            showActionButton: false),
                        SizedBox(
                          height: WSizes.spaceBtwItems,
                        ),
                        // === Categories ===
                        WHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: WSizes.spaceBtwSection,
                  )
                ],
              ),
            ),
            // === Body ===
            Padding(
              padding: const EdgeInsets.all(WSizes.defualtSpace),
              child: Column(
                children: [
                  // === Promo Banners Slider ===
                  const WPromoSlider(
                    banners: [
                      ImageConstant.banner_1,
                      ImageConstant.banner_2,
                      ImageConstant.banner_3,
                    ],
                  ),
                  const SizedBox(height: WSizes.spaceBtwSection),
                  // === Heading ===
                  WSectionHeading(
                      title: "Top Selling Products",
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: WSizes.spaceBtwItems),
                  // === In-Demand/Popular Products ===
                  WGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const WProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
