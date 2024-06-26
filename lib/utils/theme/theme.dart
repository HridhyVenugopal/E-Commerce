import 'package:flutter/material.dart';
import 'package:shopping_final/utils/theme/custom_themes/appbar_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/chip_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopping_final/utils/theme/custom_themes/textTheme.dart';
import 'package:shopping_final/utils/theme/custom_themes/textfield_theme.dart';


class TAppTheme{
  TAppTheme._(); //making it private and creating its constructor below

  ///for light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );

  ///for dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}