import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/screen/home/vertical_image_list.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class HomeCatogories extends StatelessWidget {
  const HomeCatogories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSize.defaultSpace),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return VerticalImageList(
                image: TImages.cosmeticIcon,
                title: "Cosmetics",
                onPressed: () {},
              );
            }),
      ),
    );
  }
}
