import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: WAppBar(title: Text("C.K")),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(WSizes.defualtSpace),
            child: Column(
              children: [
                // Brand Detail
                WBrandCard(showBorder: true),
                SizedBox(height: WSizes.spaceBtwItems),

                WSortableProducts()
              ],
            )),
      ),
    );
  }
}
