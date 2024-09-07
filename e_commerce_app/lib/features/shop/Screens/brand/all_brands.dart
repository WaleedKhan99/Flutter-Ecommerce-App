import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/Screens/brand/brand_products.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WAppBar(
        title: Text("Brand"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              // Heading
              const WSectionHeading(title: "Brands", showActionButton: false),
              const SizedBox(height: WSizes.spaceBtwItems),

              // Brands
              WGridLayout(
                  itemCount: 8,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => WBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts()))),
            ],
          ),
        ),
      ),
    );
  }
}
