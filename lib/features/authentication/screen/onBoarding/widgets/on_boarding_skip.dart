import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/controller/onboarding_controller.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/device/device_utility.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.titleSmall,
            )));
  }
}
