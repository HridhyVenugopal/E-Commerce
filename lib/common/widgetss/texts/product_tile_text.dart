import 'package:flutter/material.dart';

class ProductTileText extends StatelessWidget {
  const ProductTileText(
      {super.key,
      required this.title,
       this.smallSize = false,
       this.maxlines = 2,
      this.textAlign = TextAlign.left
      });

  final String title;
  final bool smallSize;
  final int maxlines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
