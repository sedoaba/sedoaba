// ignore_for_file: prefer_const_declarations, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'fonts.dart';

class TextStyles {
  TextStyles._();

  // ignore: prefer_const_constructors
  static TextStyle get logo => TextStyle(
        fontFamily: Fonts.product,
        color: const Color(0xFF45405B),
        fontSize: 22.0, //22.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get menu_item => const TextStyle(
        fontFamily: Fonts.product,
        fontSize: 12.0, //12,.0
        letterSpacing: 1.0,
        color: Color(0xFF45405B),
      );

  static TextStyle get heading => const TextStyle(
        fontFamily: Fonts.nexa_bold,
        color: Color(0xFF45405B),
        fontSize: 45.0, //45.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get sub_heading => const TextStyle(
        color: Color(0xFF45405B),
        fontFamily: Fonts.product,
        fontSize: 17.0, //17.0
        letterSpacing: 1.2,
      );

  static TextStyle get company => const TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF45405B),
        height: 1.5,
        fontSize: 15.0, //15.0
        letterSpacing: 1.0,
      );

  static final bodyTextColor = const Color(0xFF55516C);
  static TextStyle get body {
    return TextStyle(
      fontFamily: Fonts.product,
      color: bodyTextColor,
      height: 1.5,
      fontSize: 12.0, //12.0
      letterSpacing: 1.0,
    );
  }

  static TextStyle get body1 => TextStyle(
        fontFamily: Fonts.product,
        color: bodyTextColor,
        height: 1.5,
        fontSize: 10.0, //10.0
        letterSpacing: 1.0,
      );

  static TextStyle get chip => TextStyle(
        fontFamily: Fonts.product,
        color: bodyTextColor,
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );
}
