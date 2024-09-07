import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WRatingBarIndicator extends StatelessWidget {
  const WRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: WColors.grey,
        itemBuilder: (_, __) => const Icon(Icons.star, color: WColors.primary));
  }
}
