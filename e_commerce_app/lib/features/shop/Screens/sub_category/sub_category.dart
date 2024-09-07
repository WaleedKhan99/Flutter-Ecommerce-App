import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WAppBar(
        title: Text("Luxury"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              // Banner
              const WRoundedImage(
                  width: double.infinity,
                  applyImageRadius: true,
                  imageUrl: ImageConstant.banner_1),
              const SizedBox(height: WSizes.spaceBtwSection),

              // Sub-Categories
              Column(
                children: [
                  // Heading
                  WSectionHeading(
                    title: "Luxury Watches",
                    onPressed: () {},
                  ),
                  const SizedBox(height: WSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120.h,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: WSizes.spaceBtwItems),
                        itemBuilder: (_, index) =>
                            const WProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
