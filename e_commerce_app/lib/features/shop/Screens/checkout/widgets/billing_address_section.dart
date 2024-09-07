import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class WBillingAddressSection extends StatelessWidget {
  const WBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WSectionHeading(
            title: "Shipping Address", buttonTitle: "Change", onPressed: () {}),
        Text(
          "Waleed Ahmed Khan",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: WSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.phone, color: WColors.grey, size: 16.sw),
            const SizedBox(width: WSizes.spaceBtwItems),
            Text("+92-1123456789",
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: WSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.location_city, color: WColors.grey, size: 16.sw),
            const SizedBox(width: WSizes.spaceBtwItems),
            Expanded(
              child: Text("Dallas, Texas, USA",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ],
    );
  }
}
