import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/size.dart';



class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Image(
              height: TSize.iconMd,
              width: TSize.iconMd,
              image: AssetImage(TImages.google))),
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Image(
              height: TSize.iconMd,
              width: TSize.iconMd,
              image: AssetImage(TImages.facebook))),
        ),
      ],
    );
  }
}
