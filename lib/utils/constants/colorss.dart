import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //App Basic Colors
  static const Color primaryColor = Color(0xff5727A3);
  static const Color secondaryColor = Color(0xffD6C5F0);
  static const Color accent = Color(0xffF8DFD4);
  static const Color offer = Color(0xffffd814);

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffD0A2F7),
        Color(0xffE5D4FF),
        Color(0xfff1eaff),
      ]);

  //Text Colors
  static const Color textPrimary = Color(0xff232222);
  static const Color textSecondary = Color(0xff414141);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xffeeeeee);
  static const Color dark = Color(0xff232222);
  static const Color primaryBgColor = Colors.white;

  //Background ContainerColor
  static const Color lightContainer = Color(0xffeeeeee);
  static  Color darkContainer = Colors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xff5727A3);
  static const Color buttonSecondary = Color(0xffD6C5F0);
  static const Color buttonDisabled = Color(0xffd7d7d7);

  //Border Colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  //Error and Validation Colors
  static const Color error = Color(0xffD21312);
  static const Color success = Color(0xff65B741);
  static const Color warning = Color(0xffE3651D);
  static const Color info = Color(0xff141E61);

  //Neutral Shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}