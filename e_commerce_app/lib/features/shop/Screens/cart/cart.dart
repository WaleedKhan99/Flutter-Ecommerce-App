import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/shop/Screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/Screens/checkout/checkout.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(WSizes.defualtSpace),
        //  Items in Cart
        child: WCartItems(),
      ),
      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(WSizes.defualtSpace),
        child: WCustomElevatedButton(
            title: "Checkout \$250",
            onPressed: () => Get.to(() => const CheckoutScreen())),
      ),
    );
  }
}
