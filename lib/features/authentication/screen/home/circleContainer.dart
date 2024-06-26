import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer(
      {super.key,
        this.height,
        this.width,
        this.child,
        this.padding,
        this.radius = TSize.cardRadiusLg,
       this.showBorder = false,
        this.backgroundColor = TColors.white,
        this.borderColor = TColors.borderPrimary,
        this.margin
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  padding,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: borderColor) : null,
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor),
      child: child,
    );
  }
}
