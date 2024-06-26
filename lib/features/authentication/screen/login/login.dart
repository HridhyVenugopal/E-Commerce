import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/common/styles/spacing_style.dart';
import 'package:shopping_final/features/authentication/screen/login/dividerr.dart';
import 'package:shopping_final/features/authentication/screen/login/social_buttons.dart';
import 'package:shopping_final/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:shopping_final/features/authentication/screen/signup/signup.dart';
import 'package:shopping_final/navigation/navigation_menu.dart';
import 'package:shopping_final/utils/constants/image_strings.dart';
import 'package:shopping_final/utils/constants/size.dart';
import 'package:shopping_final/utils/constants/text_string.dart';
import 'package:shopping_final/utils/helpers/helper_function.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Logo, title and Subtitle
              SizedBox(
                height: THelperFunctions.screenHeight() * 0.17,
                width: THelperFunctions.screenWidth() * 0.35,
                child: Image(
                    image: AssetImage(
                        dark ? TImages.darkAppLogo : TImages.lightAppLogo)),
              ),
              Text(TTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSize.sm),
              Text(TTexts.loginSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium),

              ///Form
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSize.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: TTexts.eMail),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: TTexts.password,
                          suffixIcon: Icon(CupertinoIcons.eye_slash_fill)),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields / 2),

                    ///Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TTexts.rememberMe),
                          ],
                        ),

                        ///Forgot Password
                        TextButton(
                            onPressed: ()=>Get.to(()=>const ForgetPassword()),
                            child: const Text(TTexts.forgotPassword)),
                      ],
                    ),
                    const SizedBox(
                      height: TSize.spaceBtwSections,
                    ),

                    ///SignIn Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () =>Get.to(()=> const NavigationMenu()),
                            child: const Text(TTexts.signIn))),
                    const SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    ///Create account button
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(()=> const SignUpScreen()),
                            child: const Text(TTexts.createAccount))),
                  ],
                ),
              )),

              ///Divider
              const Dividerr(text: TTexts.orSignInWith,),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
