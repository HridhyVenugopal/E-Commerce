import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_final/common/styles/shadows.dart';
import 'package:shopping_final/common/widgetss/texts/product_price_text.dart';
import 'package:shopping_final/common/widgetss/texts/product_tile_text.dart';
import 'package:shopping_final/features/authentication/screen/home/circleContainer.dart';
import 'package:shopping_final/features/authentication/screen/home/roundedImage.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';

import '../../icons/favourite_circular_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSize.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            ///Thumbnail, WishList Button, Discount Tag
            CircleContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  ///ThumbnailImage
                  const RoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: CircleContainer(
                      radius: TSize.sm,
                      backgroundColor: TColors.offer.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: Favourate_Icon(
                        icon: CupertinoIcons.heart_fill,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),

            ///Details
            Padding(
              padding:const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTileText(title: 'Black Leather Jacket'),
                  const SizedBox(height: TSize.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        "Adidas",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSize.xs),
                      const Icon(Icons.verified,color: Colors.indigoAccent,size: TSize.iconXs)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Price
                      const ProductPriceText(price: '1200'),
                      const ProductPriceText(price: '2500',lineThrough: true,isLarge: true,),

                      ///Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSize.cardRadiusMd),
                            bottomRight: Radius.circular(TSize.productImageRadius)
                          )
                        ),
                        child: const SizedBox(
                          height: TSize.iconLg * 1.2,
                          width: TSize.iconLg * 1.2,
                          child: Center(child: Icon(Icons.add,color: TColors.white,),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
