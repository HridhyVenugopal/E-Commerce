import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/features/authentication/controller/onboarding_controller.dart';
import 'package:shopping_final/features/authentication/screen/onBoarding/widgets/onboarding_circular_button.dart';
import 'package:shopping_final/features/authentication/screen/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/text_string.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';
import 'widgets/pageView_onboarding.dart';
import 'widgets/on_boarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          ///Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:  [
              OnBoardingPage(
                  image: dark? TImages.onBoardingDImage1 : TImages.onBoardingLImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: dark? TImages.onBoardingDImage2 :TImages.onBoardingLImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: dark? TImages.onBoardingDImage3 : TImages.onBoardingLImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingCircularButton(),
        ],
      ),
    );
  }
}

