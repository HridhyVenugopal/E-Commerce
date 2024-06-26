import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Heading
          Text(
            TTexts.forgotPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          Text(
            TTexts.forgotPasswordSubtitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: TSize.spaceBtwSections * 2,
          ),
          
          ///TExtField
          TextFormField(
            decoration: const InputDecoration(labelText: TTexts.eMail,prefixIcon: Icon(CupertinoIcons.arrowtriangle_right)),
          ),
          const SizedBox(height: TSize.spaceBtwSections),
          
          ///Submit Button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>const ResetPasswordScreen()), child: const Text(TTexts.submit)),)
        ],
      ),),
    );
  }
}
