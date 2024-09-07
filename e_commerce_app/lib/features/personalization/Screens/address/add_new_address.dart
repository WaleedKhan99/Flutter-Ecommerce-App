import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WAppBar(
        showBackArrow: true,
        title: Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defualtSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: "Name"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone), labelText: "Phone Number"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.home), labelText: "Address"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.numbers),
                      labelText: "Postal Code"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.location_city), labelText: "City"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.local_activity),
                      labelText: "State"),
                ),
                const SizedBox(height: WSizes.spaceBtwinputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.globe),
                      labelText: "Country"),
                ),
                const SizedBox(height: WSizes.defualtSpace),
                WCustomElevatedButton(title: "Save", onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
