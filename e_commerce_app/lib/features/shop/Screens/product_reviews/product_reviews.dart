import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/ratingbar_indicator.dart';
import 'package:e_commerce_app/features/shop/Screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'widgets/overall_product_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // === Appbar ===
      appBar: const WAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),

      // === Body ===
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(WSizes.defualtSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "See what others are saying about our app—real user reviews and ratings that reflect the quality and experience we strive to deliver."),
            const SizedBox(height: WSizes.spaceBtwItems),
            // Overall Product Rating
            const WOverallProdcutRating(),

            const WRatingBarIndicator(rating: 4.5),
            Text(
              "150",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: WSizes.spaceBtwSection),

            // User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
