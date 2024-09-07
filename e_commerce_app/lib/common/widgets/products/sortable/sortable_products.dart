import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WSortableProducts extends StatelessWidget {
  const WSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
            items: [
              'Name',
              'High Pirce',
              'Low Price',
              'Sale',
              'Newest',
              'Popular'
            ].map((option) => DropdownMenuItem(child: Text(option))).toList(),
            onChanged: (value) {}),
        const SizedBox(height: WSizes.spaceBtwSection),
        // Products
        WGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const WProductCardVertical())
      ],
    );
  }
}
