import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class Dividerr extends StatelessWidget {
  const Dividerr({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkerGrey : TColors.grey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkerGrey : TColors.grey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
