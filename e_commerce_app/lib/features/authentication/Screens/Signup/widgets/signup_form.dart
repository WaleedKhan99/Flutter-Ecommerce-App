import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/authentication/Screens/Signup/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constraints/size.dart';
import '../../../../../utils/constraints/text_string.dart';
import 'terma_&_conditiona_checkbox.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: WText.firstName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
              ),
            ),
            const SizedBox(width: WSizes.spaceBtwinputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: WText.lastName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
              ),
            )
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwinputFields),

        // Username
        TextFormField(
          decoration: const InputDecoration(
              labelText: WText.userName,
              prefixIcon: Icon(Icons.person_add_alt_outlined)),
        ),
        const SizedBox(height: WSizes.spaceBtwinputFields),

        // Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: WText.email, prefixIcon: Icon(Icons.email_outlined)),
        ),
        const SizedBox(height: WSizes.spaceBtwinputFields),

        // Phone Number
        TextFormField(
          decoration: const InputDecoration(
              labelText: WText.phoneNo,
              prefixIcon: Icon(Icons.contact_phone_outlined)),
        ),
        const SizedBox(height: WSizes.spaceBtwinputFields),

        // Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: WText.password,
              prefixIcon: Icon(Icons.password_outlined),
              suffixIcon: Icon(Icons.visibility_off_outlined)),
        ),
        const SizedBox(height: WSizes.spaceBtwinputFields),

        // Terms & Condition
        TermsandCondition(),
        const SizedBox(height: WSizes.spaceBtwSection),

        // Sign Up Button
        WCustomElevatedButton(
            title: WText.createAccount,
            onPressed: () => Get.to(() => const EmailVerigicationScreen()))
      ],
    ));
  }
}
