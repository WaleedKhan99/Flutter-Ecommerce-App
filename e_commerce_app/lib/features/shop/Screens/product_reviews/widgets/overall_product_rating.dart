import 'package:e_commerce_app/features/shop/Screens/product_reviews/widgets/Rating_Progress_Indicator.dart';
import 'package:flutter/material.dart';

class WOverallProdcutRating extends StatelessWidget {
  const WOverallProdcutRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "5.0",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              WRatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              WRatingProgressIndicator(
                text: '4',
                value: 0.9,
              ),
              WRatingProgressIndicator(
                text: '3',
                value: 0.8,
              ),
              WRatingProgressIndicator(
                text: '2',
                value: 0.7,
              ),
              WRatingProgressIndicator(
                text: '1',
                value: 0.6,
              ),
            ],
          ),
        )
      ],
    );
  }
}
