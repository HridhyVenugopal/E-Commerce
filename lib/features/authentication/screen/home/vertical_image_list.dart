import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class VerticalImageList extends StatelessWidget {
  const VerticalImageList({
    super.key, required this.image, required this.title, this.textColor = TColors
        .white,this.bgColor= TColors
        .white, this.onPressed,
  });

  final String image, title;
  final Color textColor;
  final Color bgColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                  color: bgColor ?? (dark ? TColors.black : TColors.white),
                  borderRadius:
                  BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? TColors.dark : TColors.dark,
                ),
              ),
            ),

            ///Text
            const SizedBox(
              height: TSize.spaceBtwItems / 4,
            ),
            SizedBox(
                width: 55,
                child: Center(
                  child: Text(title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
