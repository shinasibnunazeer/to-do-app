

import 'package:flutter/material.dart';

class EColors {
//app basic colors
  static const Color primaryColor = Color.fromRGBO(46, 96, 191, 1.0),
      secondary = Color(0xFFFFF24B),
      accent = Color(0xFFb0c7ff), white = Colors.white;

//text colors
  static const Color textPrimary = Color(0xFF333333),
      textsecondary = Color(0xFF6C757D),
      textWhite = Color(0xFFFFFFFF);

//background colors
  static const Color light = Color(0xFFF6F6F6),
      dark = Color(0xFF272727),
      primaryBackground = Color(0xFFF3F5FF);

//color cotainers
  static const Color lightConatiner = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1), 
  greyConatiner = const Color.fromRGBO(240, 243, 250, 1.0);

//button colors
  static const Color buttonPrimary = Color(0xFF4b68ff),
      buttonSecondary = Color(0xFF6C757D),
      buttonDiasbled = Color(0xFFC4C4C4),
      buttonDanger = Color(0xFFff4b4b),
      buttonSuccess = Color(0xFF4bff68),
      buttonWarning = Color(0xFFff4b4b),
      buttonInfo = Color(0xFF4b68ff);

//border colors
  static const Color borderPrimary = Color(0xFFD9D9D9),
      borderSecondary = Color(0xFFE5E5E5),
      borderDanger = Color(0xFFff4b4b),
      borderSuccess = Color(0xFF4bff68),
      borderWarning = Color(0xFFff4b4b),
      borderInfo = Color(0xFF4b68ff);

//GRADIENT
  static const Gradient linearGradient = LinearGradient(
    
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    
    
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
]);
}
