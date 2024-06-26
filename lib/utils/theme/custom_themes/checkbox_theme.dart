import 'package:flutter/material.dart';

class TCheckBoxTheme{
  TCheckBoxTheme._();

  ///for light theme
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return const Color(0xff5727A3);
      }else{
        return Colors.transparent;
      }
    })
  );

  ///for dark theme
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return const Color(0xff5727A3);
        }else{
          return Colors.transparent;
        }
      })
  );
}