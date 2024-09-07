import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../app_constant/image_constant.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            height: 150.h,
            image: AssetImage(
                dark ? ImageConstant.logodark : ImageConstant.logolight)),
        Text(
          WText.logintitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: WSizes.sm),
        Text(
          WText.loginsubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
