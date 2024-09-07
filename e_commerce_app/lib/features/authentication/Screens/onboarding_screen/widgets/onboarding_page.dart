import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constraints/size.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.substitle,
  });

  final String image, title, substitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(WSizes.defualtSpace),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Image(
              fit: BoxFit.cover,
              height: 0.5.sh,
              width: 0.9.sw,
              // width: WHelperfunction.screenWidth() * 0.8,
              // height: WHelperfunction.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: WSizes.spaceBtwItems,
          ),
          Text(
            substitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
