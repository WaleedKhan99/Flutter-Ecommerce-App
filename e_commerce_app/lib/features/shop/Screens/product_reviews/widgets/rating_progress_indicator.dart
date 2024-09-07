import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRatingProgressIndicator extends StatelessWidget {
  const WRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: WDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10.h,
              backgroundColor: WColors.grey,
              valueColor: const AlwaysStoppedAnimation(WColors.primary),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        )
      ],
    );
  }
}
