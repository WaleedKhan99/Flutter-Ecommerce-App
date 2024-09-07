import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/ratingbar_indicator.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(ImageConstant.userimage),
                ),
                const SizedBox(width: WSizes.spaceBtwItems),
                Text(
                  "Ali",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const WRatingBarIndicator(rating: 4.5),
            const SizedBox(width: WSizes.spaceBtwItems),
            Text(
              "15 July 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwItems),
        const ReadMoreText(
          "This app has a great UI—it's clean and easy to navigate. The features are really practical and make the whole experience smooth and enjoyable.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "Less",
          trimCollapsedText: "Read more",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: WColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: WColors.primary),
        ),
        const SizedBox(height: WSizes.spaceBtwItems),

        // Company Review

        WRoundedContainer(
          backgroundColor: dark ? WColors.dark : WColors.grey.withOpacity(0.2),
          child: Padding(
            padding: EdgeInsets.all(WSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ecommerce Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("25 June 2023",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: WSizes.spaceBtwItems),
                const ReadMoreText(
                  "This app has a great UI—it's clean and easy to navigate. The features are really practical and make the whole experience smooth and enjoyable.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "Less",
                  trimCollapsedText: "Read more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: WColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: WColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: WSizes.spaceBtwSection),
      ],
    );
  }
}
