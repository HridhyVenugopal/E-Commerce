import 'package:flutter/material.dart';
import 'package:shopping_final/common/widgetss/product_card/product_card_vertical.dart';
import 'package:shopping_final/features/authentication/screen/home/carousalHome.dart';
import 'package:shopping_final/features/authentication/screen/home/customAppBar.dart';
import 'package:shopping_final/features/authentication/screen/home/custom_searchBar.dart';
import 'package:shopping_final/features/authentication/screen/home/home_categories.dart';
import 'package:shopping_final/features/authentication/screen/home/primartHeaderContainer.dart';
import 'package:shopping_final/features/authentication/screen/home/section_heading.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/size.dart';

import '../../../../common/widgetss/layout/grid_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      ///Header
      const PrimaryHeaderContainer(
          child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: TSize.spaceBtwItems),

          ///SearchBar
          CustomSearchBar(
            text: "Search in Store",
          ),
          SizedBox(height: TSize.spaceBtwSections),

          ///Heading
          SectionHeading(
            title: "Popular Categories",
            showActionButton: false,
            textColor: Colors.white,
            padding: EdgeInsets.zero,
          ),
          SizedBox(height: TSize.spaceBtwItems),

          ///Categories
          HomeCatogories(),
        ],
      )),

      ///Carousel Slider and the Bottom Indicator
      Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            const Carousel_Home(banners: [
              TImages.promoBanner1,
              TImages.promoBanner2,
              TImages.promoBanner3,
              TImages.promoBanner4,
            ]),
            const SizedBox(height: TSize.spaceBtwSections),

            ///Heading
            SectionHeading(title: 'Popular Products',onPressed: (){}),
            const SizedBox(height: TSize.spaceBtwItems),

            ///Product Card Vertical
            GridLayout(
                itemCount: 5,
                itemBuilder: (_, index) => const ProductCardVertical()),
          ],
        ),
      )
    ])));
  }
}
