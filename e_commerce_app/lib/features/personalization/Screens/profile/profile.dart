import 'package:e_commerce_app/app_constant/image_constant.dart';
import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/image_widget/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/Screens/profile/widget/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constraints/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      // === Body ==

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defualtSpace),
          child: Column(
            children: [
              // === Profile Picture

              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    WCircularImage(
                      image: ImageConstant.userimage,
                      width: 80.w,
                      height: 80.h,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const SizedBox(height: WSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: WSizes.spaceBtwItems),
              const WSectionHeading(
                  title: "Profile Information", showActionButton: false),
              const SizedBox(height: WSizes.spaceBtwItems),

              WProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Waleed Ahmed Khan',
              ),
              WProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Waleed Ahmed Khan',
              ),

              const SizedBox(height: WSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: WSizes.spaceBtwItems),

              // === Heading Personal Info ===
              const WSectionHeading(
                  title: "Personal Information", showActionButton: false),
              const SizedBox(height: WSizes.spaceBtwItems),

              WProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '2020067',
              ),
              WProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'waleedk1599@gmail.com',
              ),
              WProfileMenu(
                onPressed: () {},
                title: 'Contact',
                value: '+92-111-2222222',
              ),
              WProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              WProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '15 Jul 1999 ',
              ),
              const Divider(),
              const SizedBox(height: WSizes.spaceBtwItems),

              WCustomElevatedButton(
                title: 'Close Account',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
