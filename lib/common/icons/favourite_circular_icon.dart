import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';

import '../../utils/constants/colorss.dart';

class Favourate_Icon extends StatelessWidget {
  /// A Custom Circular Icon Widget  With a Background Color
  ///
  /// Properties are:
  /// Container[width], [height] & [backgroundColor],
  ///
  /// Icons [size], [color] & [onPressed]
  const Favourate_Icon({
    super.key,
    this.width,
    this.height,
    this.size = TSize.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.black.withOpacity(0.9)
                  : TColors.white.withOpacity(0.9)),
      child: IconButton(
          onPressed:onPressed, icon:  Icon(icon , color: color, size: size,)),
    );
  }
}
