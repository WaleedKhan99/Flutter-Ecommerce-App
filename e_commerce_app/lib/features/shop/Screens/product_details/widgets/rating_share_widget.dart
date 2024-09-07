import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WRatingAndShare extends StatelessWidget {
  const WRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(width: WSizes.spaceBtwItems / 2),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "4.9 ", style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: "(201)", style: Theme.of(context).textTheme.bodyLarge)
            ])),
          ],
        ),
        // Share
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
          iconSize: WSizes.iconMd,
        ),
      ],
    );
  }
}
