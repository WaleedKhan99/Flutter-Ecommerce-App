import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/features/personalization/Screens/address/add_new_address.dart';
import 'package:e_commerce_app/features/personalization/Screens/address/widgets/single_address.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: WColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(
          Icons.add,
          color: WColors.white,
        ),
      ),
      appBar: WAppBar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              WSingleAddress(selectedAddress: false),
              WSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
