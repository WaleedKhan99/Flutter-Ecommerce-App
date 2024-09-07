import 'package:e_commerce_app/common/widgets/login_signup_reusable_items/Form_Divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup_reusable_items/Social_Button.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              //  Title
              Text(WText.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: WSizes.spaceBtwSection,
              ),
              // Form

              SignupForm(),
              const SizedBox(height: WSizes.spaceBtwSection),

              // Divider
              FormDivider(dividertext: WText.signUpWith),

              const SizedBox(height: WSizes.spaceBtwSection),
              // Social Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
