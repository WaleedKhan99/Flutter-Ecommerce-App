import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/appBar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/text_string.dart';

class WHomeAppBar extends StatelessWidget {
  const WHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            WText.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: WColors.textWhite),
          ),
          Text(
            WText.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: WColors.white),
          )
        ],
      ),
      actions: [
        WCartCounter(
          onPressed: () {},
          iconColor: WColors.white,
        )
      ],
    );
  }
}
