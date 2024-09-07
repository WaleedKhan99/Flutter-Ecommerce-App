import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/Screens/home/home.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAppBar(
        title: Text(
          "Favourites",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          WCircularIcon(
            icon: Icons.add,
            onPressed: () => Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              WGridLayout(
                  itemCount: 1,
                  itemBuilder: (_, index) => WProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
