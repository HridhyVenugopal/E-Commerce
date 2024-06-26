import 'package:flutter/material.dart';
import 'package:shopping_final/utils/constants/size.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    bottom: TSize.defaultSpace,
    left: TSize.defaultSpace,
    right: TSize.defaultSpace,
  );
}