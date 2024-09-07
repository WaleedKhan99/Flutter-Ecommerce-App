import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/prouct_price_text.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WCartItems extends StatelessWidget {
  const WCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
            const SizedBox(height: WSizes.spaceBtwSection),
        itemCount: 2,
        itemBuilder: (_, index) => Column(
              children: [
                // Cart Item
                const WCartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(height: WSizes.spaceBtwItems),

                //  // Add & Remove Button with Price
                if (showAddRemoveButtons)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70.w),
                          // Add & Remove Button
                          const WProductQuantitywithAddRemoveButton(),
                        ],
                      ),
                      const WProductPriceText(price: "\$250")
                    ],
                  )
              ],
            ));
  }
}
