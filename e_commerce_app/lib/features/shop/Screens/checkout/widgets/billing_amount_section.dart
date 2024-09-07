import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WBillingAmountSection extends StatelessWidget {
  const WBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SubTotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$250", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwItems / 2),

// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$0.5", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),

        const SizedBox(height: WSizes.spaceBtwItems / 2),

// Tax Fee
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
          Text("\$0.4", style: Theme.of(context).textTheme.labelLarge)
        ]),
        const SizedBox(height: WSizes.spaceBtwItems / 2),

// Order Total
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
          Text("\$0.5", style: Theme.of(context).textTheme.titleMedium)
        ]),
        const SizedBox(height: WSizes.spaceBtwItems / 2),
      ],
    );
  }
}
