import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/size.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThrough = false,
      this.currency = Icons.currency_rupee});

  final String price;
  final IconData currency;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(currency,size: TSize.iconSm,),
        Text(
          price,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          style: isLarge
              ? Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null)
              : Theme.of(context).textTheme.titleLarge!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null),
        ),
      ],
    );
  }
}
