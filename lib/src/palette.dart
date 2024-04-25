import 'package:flutter/material.dart';

class Palette {
  // Primary
  static const surfaceBlack = Color.fromRGBO(21, 21, 21, 1);

  static const surfaceDivider = Color.fromRGBO(34, 34, 34, 1);

  static const surfaceWhite = Color.fromRGBO(255, 255, 255, 1);

  static const typographyTextPrimary = Color.fromRGBO(224, 227, 231, 1);

  static const typographyTextSecondaryLight = Color.fromRGBO(173, 173, 173, 1);

  static const typographyTextSecondaryDark = Color.fromRGBO(117, 117, 117, 1);

  static const buttonsActionDisabled = Color.fromRGBO(78, 78, 78, 1);

  static const buttonsActionActive = Color.fromRGBO(58, 58, 58, 1);

  static const primaryGreenDark = Color.fromRGBO(13, 57, 44, 1);

  static const primaryGreenMain = Color.fromRGBO(0, 181, 124, 1);

  static const primaryGreenLight = Color.fromRGBO(165, 226, 207, 1);

  static const backgroundDefault = Color.fromRGBO(9, 9, 9, 1);

  // Secondary
  static const tvGreen = Color.fromRGBO(0, 255, 175, 1);

  static const tvRed = Color.fromRGBO(199, 31, 61, 1);

  static const tvYellow = Color.fromRGBO(225, 128, 13, 1);

  static const tvBlue = Color.fromRGBO(10, 62, 107, 1);

  static const tvPink = Color.fromRGBO(248, 152, 240, 1);

  // Tertiary
  static const darkRed = Color.fromRGBO(94, 19, 32, 1);

  static const orange = Color.fromRGBO(254, 127, 56, 1);

  static const darkOrange = Color.fromRGBO(118, 29, 17, 1);

  static const pink2 = Color.fromRGBO(188, 60, 195, 1);

  static const top8Gold = Color.fromRGBO(166, 110, 18, 1);

  static const top8Silver = Color.fromRGBO(107, 107, 107, 1);

  static const top8Bronze = Color.fromRGBO(176, 96, 71, 1);

  // Error
  static const errorCoral = Color.fromRGBO(255, 97, 106, 1);

  // Gradients
  static const buttonsGreenGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(0, 181, 124, 1),
        Color.fromRGBO(28, 120, 109, 1),
      ]);

  static const buttonsYellowOrangeGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(222, 159, 56, 1),
        Color.fromRGBO(254, 123, 55, 1),
      ]);

  static const buttonsPinkRedGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(252, 29, 153, 1),
        Color.fromRGBO(249, 34, 101, 1),
        Color.fromRGBO(255, 15, 59, 1),
      ]);

  static const buttonsPinkGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(235, 96, 102, 1),
        Color.fromRGBO(184, 57, 202, 1),
      ]);

  static const buttonsPink3Gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(184, 57, 202, 1),
        Color.fromRGBO(235, 96, 102, 1),
      ]);

  static const buttonsPurpleGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromRGBO(185, 9, 190, 1),
        Color.fromRGBO(59, 0, 134, 1),
      ]);
}
