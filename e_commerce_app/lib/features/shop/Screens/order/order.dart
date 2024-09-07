import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'widgets/orders.list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: WAppBar(
        showBackArrow: true,
        title:
            Text("My Orders", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(WSizes.defualtSpace),
        // Order
        child: WOrderListItems(),
      ),
    );
  }
}
