import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/controller/onboarding_controller.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/device/device_utility.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSize.defaultSpace,
        bottom: TDeviceUtility.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () =>OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: const CircleBorder(),
            backgroundColor: dark? TColors.primaryColor : Colors.black),
            child: const Icon(Icons.arrow_forward_ios_rounded)));
  }
}
