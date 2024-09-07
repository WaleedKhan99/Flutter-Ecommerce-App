import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constraints/size.dart';

class TermsandCondition extends StatelessWidget {
  const TermsandCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24.h,
            height: 24.h,
            child: Checkbox(
                fillColor: MaterialStatePropertyAll(WColors.primary),
                value: true,
                onChanged: (value) {})),
        const SizedBox(
          width: WSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${WText.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${WText.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : WColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : WColors.primary)),
          TextSpan(
              text: '${WText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${WText.termOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : WColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : WColors.primary)),
        ]))
      ],
    );
  }
}
