import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: WAppBar(
        title: Text("Famous Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defualtSpace),
          child: WSortableProducts(),
        ),
      ),
    );
  }
}
