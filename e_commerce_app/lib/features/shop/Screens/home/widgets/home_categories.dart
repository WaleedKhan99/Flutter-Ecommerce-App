import 'package:e_commerce_app/features/shop/Screens/sub_category/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../../app_constant/image_constant.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class WHomeCategories extends StatelessWidget {
  const WHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 12,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return WVerticalImageText(
              image: ImageConstant.watch_2,
              title: 'Watch',
              onTap: () => Get.to((page) => const SubCategoriesScreen()),
            );
          }),
    );
  }
}
