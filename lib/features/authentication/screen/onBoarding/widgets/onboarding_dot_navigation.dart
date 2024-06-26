import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/controller/onboarding_controller.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/device/device_utility.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: TSize.defaultSpace,
      child: SmoothPageIndicator(
          effect:  ExpandingDotsEffect(activeDotColor: dark? TColors.light : TColors.dark, dotHeight: 6),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3),
    );
  }
}
