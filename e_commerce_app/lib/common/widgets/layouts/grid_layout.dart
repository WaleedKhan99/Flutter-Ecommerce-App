import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WGridLayout extends StatelessWidget {
  const WGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 210,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            mainAxisSpacing: WSizes.gridViewSpacing,
            crossAxisSpacing: WSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
