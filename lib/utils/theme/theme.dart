

import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/theme/coustom_themes/app_bar_theme.dart';
import 'package:to_do/utils/theme/coustom_themes/bottom_sheet_theme.dart';
import 'package:to_do/utils/theme/coustom_themes/elevated_button_theme.dart';
import 'package:to_do/utils/theme/coustom_themes/out_line_button_theme.dart';
import 'package:to_do/utils/theme/coustom_themes/text_filed_theme.dart';
import 'package:to_do/utils/theme/coustom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EThemeData {

static  ThemeData lightTheme = ThemeData(
//use material 3
 useMaterial3: true,
 fontFamily: 'popins',
 brightness: Brightness.light,
 primaryColor: Colors.blue,
textTheme: ETextTheme.lightTextTheme,
 scaffoldBackgroundColor: EColors.light,
 appBarTheme: EAppBarTheme.lightAppBarThemeData,
 bottomSheetTheme: EBottomSheetTheme.lightBottomSheetThemeData,
 elevatedButtonTheme: EElevatedButtonTeme.lightElevatedButtonThemeData,
 outlinedButtonTheme: EOutlineButtonTheme.lightOutButtonThemeData,
 inputDecorationTheme: ETextfieldTheme.lighTextfieldTheme

);




}