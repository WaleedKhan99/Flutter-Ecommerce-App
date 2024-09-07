import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividertext,
  });

  final String dividertext;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Colors.white24 : Colors.grey,
            thickness: 0.5.w,
            indent: 60.w,
            endIndent: 5.w,
          ),
        ),
        Text(
          dividertext.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? Colors.white24 : Colors.grey,
            thickness: 0.5.w,
            indent: 5.w,
            endIndent: 60.w,
          ),
        )
      ],
    );
  }
}
