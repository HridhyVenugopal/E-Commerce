import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/utils/theme/theme.dart';
import 'features/authentication/screen/onBoarding/onboarding.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, //show as the theme in our phone
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
