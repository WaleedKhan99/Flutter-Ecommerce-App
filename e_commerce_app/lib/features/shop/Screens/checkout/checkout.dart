import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/login_signup_reusable_items/success_screen.dart';
import 'package:e_commerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce_app/features/shop/Screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/Screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/Screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../common/widgets/appBar/appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Scaffold(
      appBar: WAppBar(
        showBackArrow: true,
        title: Text("Order Review",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              // Items in Cart
              const WCartItems(showAddRemoveButtons: false),
              const SizedBox(height: WSizes.spaceBtwSection),

              // Coupen TextField
              const WCoupanCode(),
              const SizedBox(height: WSizes.spaceBtwSection),

              // Billing Section
              WRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(WSizes.sm),
                backgroundColor: dark ? WColors.black : WColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    WBillingAmountSection(),
                    SizedBox(height: WSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: WSizes.spaceBtwItems),

                    // Payment Method
                    WBillingPaymentSection(),
                    SizedBox(height: WSizes.spaceBtwItems),

                    // Address
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(WSizes.defualtSpace),
        child: WCustomElevatedButton(
          title: "Checkout \$250",
          onPressed: () => Get.to(() => SuccessScreen(
                image: ImageConstant.payments,
                title: 'Payment Successful!',
                subtitle: 'Your Order will be deliverd soon',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )),
        ),
      ),
    );
  }
}
