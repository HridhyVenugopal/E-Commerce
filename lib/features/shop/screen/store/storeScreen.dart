import 'package:flutter/material.dart';
import 'package:shopping_final/common/widgetss/appBar/custom_appbar.dart';
import 'package:shopping_final/common/widgetss/layout/grid_layout.dart';
import 'package:shopping_final/common/widgetss/texts/brand_title_with_verifiedIcon.dart';
import 'package:shopping_final/features/authentication/screen/home/bag_counter_icon.dart';
import 'package:shopping_final/features/authentication/screen/home/circleContainer.dart';
import 'package:shopping_final/features/authentication/screen/home/custom_searchBar.dart';
import 'package:shopping_final/features/authentication/screen/home/section_heading.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/enums.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';
import '../../../../common/widgetss/image/featuredBrandContainer.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [BagCounterIcon(onPressed: () {}, iconColor: TColors.black)],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search Bar
                      const SizedBox(height: TSize.spaceBtwItems),
                      const CustomSearchBar(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSize.spaceBtwSections),

                      ///Featured Brands
                      SectionHeading(
                          title: "Featured Brands", onPressed: () {}),
                      const SizedBox(height: TSize.spaceBtwItems / 1.5),
                      GridLayout(
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: CircleContainer(
                                padding: const EdgeInsets.all(TSize.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    ///Icon
                                    Flexible(
                                      child: FeatuedBrandContainer(
                                        image: TImages.clothIcon,
                                        isNetworkImage: false,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            THelperFunctions.isDarkMode(context)
                                                ? TColors.white
                                                : TColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                        width: TSize.spaceBtwItems / 2),

                                    ///Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandTitleTextWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            "256 Products",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
