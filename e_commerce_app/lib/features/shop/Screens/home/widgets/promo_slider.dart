import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/circular_container.dart';
import 'package:e_commerce_app/common/widgets/image_widget/rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WPromoSlider extends StatelessWidget {
  const WPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners.map((Url) => WRoundedImage(imageUrl: Url)).toList()),
        const SizedBox(
          height: WSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                WCircularContainer(
                  width: 20.w,
                  height: 4.h,
                  margin: EdgeInsets.only(right: 10.w),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? WColors.primary
                      : WColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
