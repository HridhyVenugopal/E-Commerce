import 'package:flutter/material.dart';

class TChipTheme{
  TChipTheme._();

  ///for light theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 120),
    checkmarkColor: Colors.white
  );

  ///for dark theme
  static ChipThemeData darkChipTheme = const  ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle:  TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 120),
      checkmarkColor: Colors.white
  );
}