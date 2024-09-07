import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/Screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/Screens/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce_app/features/shop/Screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/features/shop/Screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:readmore/readmore.dart';
import 'widgets/bottom_add_to_cart.dart';
import 'widgets/product_meta_data.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const WBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // === Prodcut Image Slider ===
            const WProductImageSlider(),

            // === Product Details ===
            Padding(
              padding: const EdgeInsets.only(
                  right: WSizes.defualtSpace,
                  left: WSizes.defualtSpace,
                  bottom: WSizes.defualtSpace),
              child: Column(
                children: [
                  // Rating & Share
                  const WRatingAndShare(),

                  // Price, Title, Stock, Brand
                  const WProductMetaData(),

                  // Attributes
                  const WProductAttributes(),
                  const SizedBox(height: WSizes.spaceBtwSection),

                  // Checkout Button
                  WCustomElevatedButton(title: "Checkout", onPressed: () {}),

                  const SizedBox(height: WSizes.spaceBtwSection),

                  // Description
                  const WSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(height: WSizes.spaceBtwItems),
                  const ReadMoreText(
                    "Offering premium, stylish watches that blend elegance with precision, perfect for every occasion.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read more",
                    trimExpandedText: "Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: WSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const WSectionHeading(
                          title: "Reviews (201)", showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Icons.arrow_right, size: 30))
                    ],
                  ),
                  const SizedBox(height: WSizes.spaceBtwSection),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
