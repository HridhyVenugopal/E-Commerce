import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/device/device_utility.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.text, this.showBackground = true, this.showBorder = true, this.onTap});

  final String text;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
        child: Container(
          width: TDeviceUtility.getScreenWidth(context),
          padding: const EdgeInsets.all(TSize.md),
          decoration: BoxDecoration(
            color: showBackground? dark ? TColors.dark.withOpacity(0.5) : TColors.white.withOpacity(0.5) : Colors.transparent,
            borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
            border: showBorder? Border.all(color: dark ? TColors.dark : TColors.grey) : null
          ),
          child: Row(
            children: [
              const Icon(Icons.search,color: TColors.darkerGrey),
              const SizedBox(width: TSize.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
