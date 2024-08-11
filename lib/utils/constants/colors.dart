import 'package:flutter/material.dart';

class TColors {
  TColors._();

//App basic Color
  static const Color p = Color(0x000000ff);
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffE24B);
  static const Color accent = Color(0xffb0c7ff);


//Gradient colors
static const Gradient linerarGradient =LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.707, -0.707),
  colors: [
  Color(0xffff9a9e),
  Color(0xfffad0c4),
  Color(0xfffad0c4),
]);



// Text Color
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6cf757d);
  static const Color textWhite = Colors.white;

  //background Color
  static const Color light = Color(0xffF6F6F6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //background Container Color
  static const Color lightContainer = Color(0xffF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  //button color
  static const Color buttonprimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonDisabled = Color(0xffC4C4C4);

  //border Color
  static const Color borderPrimary = Color(0xffD9D9D9);
  static const Color borderSecondary = Color(0xffE6E6E6);

  //error and validation colors
  static const Color error = Color(0xffD32f2f);
  static const Color success = Color(0xff388E3c);
  static const Color warning = Color(0xffF57C00);
  static const Color info = Color(0xff1976D2);

  //Neutral Shared
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xffF4F4F4);
  static const Color lightGrey = Color(0xffF9F9F9);
  static const Color white = Color(0xffFFFFFF);
}
