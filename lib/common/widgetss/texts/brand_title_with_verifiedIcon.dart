import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/enums.dart';

import '../../../utils/constants/size.dart';
import 'brand_title_text.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize
          )
        ),
        const SizedBox(width: TSize.xs),
        Icon(Icons.verified,
            color: iconColor, size: TSize.iconXs)
      ],
    );
  }
}
