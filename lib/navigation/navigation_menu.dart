import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/features/authentication/screen/home/home_page.dart';
import 'package:shopping_final/features/shop/screen/store/storeScreen.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
          ()=> NavigationBar(
          height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value = index,
            backgroundColor: dark? TColors.black : TColors.white,
            indicatorColor: dark? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),

            destinations: const [
              NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
              NavigationDestination(icon: Icon(CupertinoIcons.bag), label: "Store"),
              NavigationDestination(icon: Icon(Icons.favorite_border), label: "Wishlist"),
              NavigationDestination(icon: Icon(Icons.perm_identity), label: "Profile"),
            ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
 final Rx<int> selectedIndex = 0.obs;

 final screens = [const HomePage(),const StoreScreen(),Container(color: Colors.pink),Container(color: Colors.yellow),];
}

