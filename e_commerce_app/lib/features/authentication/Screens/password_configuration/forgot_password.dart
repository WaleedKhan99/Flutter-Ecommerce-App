import 'package:e_commerce_app/features/authentication/Screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(WSizes.defualtSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Headings
            Text(
              WText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: WSizes.spaceBtwItems,
            ),

            Text(
              WText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: WSizes.spaceBtwSection * 2,
            ),

            // Text Field
            TextFormField(
              decoration: InputDecoration(
                  labelText: WText.email,
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: WSizes.spaceBtwSection,
            ),
            // Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetPassword()),
                    child: Text(WText.submit)))
          ],
        ),
      ),
    );
  }
}
