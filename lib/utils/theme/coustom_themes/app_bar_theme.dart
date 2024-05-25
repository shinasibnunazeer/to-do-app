
import 'package:flutter/material.dart';

class EAppBarTheme {
  static const lightAppBarThemeData = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    // backgroundColor: Colors.transparent,
    // surfaceTintColor: Colors.transparent,
    surfaceTintColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );


}