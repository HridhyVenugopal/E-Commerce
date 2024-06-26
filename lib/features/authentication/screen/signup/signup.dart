import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping_final/features/authentication/screen/login/dividerr.dart';
import 'package:shopping_final/features/authentication/screen/login/social_buttons.dart';
import 'package:shopping_final/features/authentication/screen/signup/verify_email.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/constants/text_string.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSize.spaceBtwSections),

              ///Forms
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Icons.person)),
                        ),
                      ),
                      const SizedBox(width: TSize.spaceBtwInputFields),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Icons.person)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  ///Username
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  ///Email
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.eMail, prefixIcon: Icon(Icons.email)),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  ///Phone Number
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  ///Password
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(CupertinoIcons.eye_slash_fill)),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  ///Terms and Condition check box
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(width: TSize.spaceBtwItems),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '${TTexts.iAgreeTo}',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${TTexts.privacyPolicy}',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                    )),
                        TextSpan(
                            text: ' and ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${TTexts.termsOfUse}',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                    )),
                      ]))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),

                  ///SignUp Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const VerifyEmailScreen()),
                        child: const Text(TTexts.createAccount)),
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),

                  ///Divider
                  const Dividerr(
                    text: TTexts.orSignUpWith,
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),

                  ///social Logos
                  const SocialButtons(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
