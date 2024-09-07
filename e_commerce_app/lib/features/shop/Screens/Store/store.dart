import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appBar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/features/shop/Screens/Store/widgets/category_tab.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dark = WHelperfunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: WAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [WCartCounter(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: WHelperfunction.isDarkMode(context)
                      ? WColors.black
                      : WColors.white,
                  expandedHeight: 440.h,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(WSizes.defualtSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // ==== Search Bar ====
                        const SizedBox(height: WSizes.spaceBtwItems),
                        const WSearchContainer(
                          text: "Search",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: WSizes.spaceBtwSection,
                        ),
                        // ==== Featured Brands ====
                        WSectionHeading(
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(height: WSizes.spaceBtwItems / 1.5),
                        WGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const WBrandCard(showBorder: false);
                            })
                      ],
                    ),
                  ),

                  /// ==== Tabs ====
                  bottom: const WTabBar(
                    tabs: [
                      Tab(child: Text("Electronics")),
                      Tab(child: Text("Grocery")),
                      Tab(child: Text("Clothes")),
                      Tab(child: Text("Furniture")),
                      Tab(child: Text("Cosmetics")),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(children: [
              WCategoryTab(),
              WCategoryTab(),
              WCategoryTab(),
              WCategoryTab(),
              WCategoryTab(),
            ])),
      ),
    );
  }
}
