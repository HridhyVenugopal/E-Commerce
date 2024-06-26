import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';

class BagCounterIcon extends StatelessWidget {
  const BagCounterIcon({
    super.key, required this.onPressed,required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon:  Icon(
              CupertinoIcons.bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white,fontSizeFactor: 0.8),
                )),
          ),
        )
      ],
    );
  }
}
