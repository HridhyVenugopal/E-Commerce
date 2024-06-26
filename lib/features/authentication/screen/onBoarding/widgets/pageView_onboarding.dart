import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
        required this.image,
        required this.title,
        required this.subTitle});

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            height: THelperFunctions.screenHeight() * 0.1,
          ),
          Container(
            height: THelperFunctions.screenHeight() * 0.4,
            width: THelperFunctions.screenWidth() * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: THelperFunctions.screenHeight() * 0.15,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
