import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/cutom_shapes/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/Screens/address/address.dart';
import 'package:e_commerce_app/features/personalization/Screens/profile/profile.dart';
import 'package:e_commerce_app/features/shop/Screens/order/order.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // === Header ===
            WPrimaryHeaderContainer(
                child: Column(
              children: [
                WAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: WColors.white),
                  ),
                ),

                // === User Profile Card
                WUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: WSizes.spaceBtwSection,
                ),
              ],
            )),

            // === Body ===
            Padding(
              padding: const EdgeInsets.all(WSizes.defualtSpace),
              child: Column(
                children: [
                  //  === Account ===
                  const WSectionHeading(title: "Account Settings"),
                  const SizedBox(
                    height: WSizes.spaceBtwItems,
                  ),
                  WSettingMenuTile(
                    icon: Icons.home_outlined,
                    title: "My Address",
                    subtitle: "Add shopping delivery address",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  WSettingMenuTile(
                    icon: Icons.shopping_bag_outlined,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  WSettingMenuTile(
                    icon: Icons.shopping_basket_outlined,
                    title: "My Order",
                    subtitle: "In progress and completed orders",
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  WSettingMenuTile(
                    icon: Icons.account_balance_outlined,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  WSettingMenuTile(
                    icon: Icons.discount_outlined,
                    title: "My Vouchers",
                    subtitle: "List of all the discounted vouchers",
                    onTap: () {},
                  ),
                  WSettingMenuTile(
                    icon: Icons.notifications_outlined,
                    title: "Notification",
                    subtitle: "Set any kind of notification message",
                    onTap: () {},
                  ),
                  WSettingMenuTile(
                    icon: Icons.security_outlined,
                    title: "Account Privacy",
                    subtitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),
                  // === App Settings ===
                  const SizedBox(height: WSizes.spaceBtwSection),
                  const WSectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: WSizes.spaceBtwItems),
                  const WSettingMenuTile(
                    icon: Icons.file_open_outlined,
                    title: "Load Data",
                    subtitle: "Upload data to your cloud firestore",
                  ),
                  WSettingMenuTile(
                    icon: Icons.location_on_outlined,
                    title: "Location",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(
                        activeColor: WColors.primary,
                        value: true,
                        onChanged: (value) {}),
                  ),

                  WSettingMenuTile(
                    icon: Icons.safety_check_outlined,
                    title: "Safe Mode",
                    subtitle: "Seach result is safe",
                    trailing: Switch(
                        activeColor: WColors.primary,
                        value: false,
                        onChanged: (value) {}),
                  ),

                  WSettingMenuTile(
                    icon: Icons.image_outlined,
                    title: "HD Image Quality",
                    subtitle: "Set image quality",
                    trailing: Switch(
                        activeColor: WColors.primary,
                        value: true,
                        onChanged: (value) {}),
                  ),
                  const SizedBox(height: WSizes.spaceBtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(WColors.primary),
                          side: MaterialStateProperty.all(
                              const BorderSide(color: WColors.primary)),
                        ),
                        onPressed: () {},
                        child: Text("Logout",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(color: WColors.white))),
                  ),
                  const SizedBox(height: WSizes.spaceBtwSection * 2)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
