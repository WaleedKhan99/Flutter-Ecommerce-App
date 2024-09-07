import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/authentication/Screens/Signup/signup.dart';
import 'package:e_commerce_app/features/authentication/Screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constraints/size.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: WSizes.spaceBtwSection),
      child: Column(
        children: [
          // Email

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined), labelText: WText.email),
          ),
          const SizedBox(height: WSizes.spaceBtwinputFields),
          // Password

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: WText.password,
                suffixIcon: Icon(Icons.visibility_outlined)),
          ),
          const SizedBox(height: WSizes.spaceBtwinputFields / 2),
          // Remember Me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(
                      fillColor:
                          const MaterialStatePropertyAll(WColors.primary),
                      value: true,
                      onChanged: (value) {}),
                  const Text(WText.rememberMe)
                ],
              ),

              // Forgot Password
              TextButton(
                  onPressed: () => Get.to(() => ForgotPassword()),
                  child: Text(WText.forgotPassword))
            ],
          ),
          const SizedBox(height: WSizes.spaceBtwSection),
          // Sign-In Button
          WCustomElevatedButton(
              title: WText.signIn,
              onPressed: () => Get.to(() => const NavigationMenu())),

          const SizedBox(height: WSizes.spaceBtwItems),
          // Create Account Button

          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: WColors.primary),
              ),
              child: const Text(WText.signUp),
            ),
          )
        ],
      ),
    ));
  }
}
