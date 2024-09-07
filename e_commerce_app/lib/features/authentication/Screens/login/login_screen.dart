import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';

import 'package:flutter/material.dart';
import '../../../../utils/constraints/size.dart';
import '../../../../common/widgets/login_signup_reusable_items/Form_Divider.dart';
import 'widgets/Login_Form.dart';
import 'widgets/Login_Header.dart';
import '../../../../common/widgets/login_signup_reusable_items/Social_Button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: WSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children: [
              // Logo, title and subtitle
              LoginHeader(),
              // Form
              LoginForm(),
              // Divider
              FormDivider(
                dividertext: WText.signInWith,
              ),
              SizedBox(height: WSizes.spaceBtwSection),
              // Footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
