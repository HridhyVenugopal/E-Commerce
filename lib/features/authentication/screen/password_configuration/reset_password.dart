import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/text_string.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';

import '../../../../utils/constants/size.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon:const Icon( CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding:const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            ///Image
            Image(
              image:const AssetImage(TImages.deliveredEmailIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///Title and subtitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              TTexts.changeYourPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),

            ///buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(TTexts.done)),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.resendEmail)),
            ),
          ],
        ),),
      ),
    );
  }
}
