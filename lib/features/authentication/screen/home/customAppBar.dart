import 'package:flutter/material.dart';
import 'package:shopping_final/common/widgetss/appBar/custom_appbar.dart';
import 'package:shopping_final/features/authentication/screen/home/bag_counter_icon.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/text_string.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(TTexts.homeAppBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.grey)),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(TTexts.homeAppBarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white)),
          ),
        ],
      ),
      actions: [
        BagCounterIcon(onPressed: (){}, iconColor: TColors.white,)
      ],
    );
  }
}
