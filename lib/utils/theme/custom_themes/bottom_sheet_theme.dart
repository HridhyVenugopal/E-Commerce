import 'package:flutter/material.dart';

class TBottomSheetTheme{
  TBottomSheetTheme._();

  ///for light theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  ///for dark theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}