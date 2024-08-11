
import 'package:flutter/material.dart';

import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlinebutton_thme.dart';
import 'custom_theme/textfield_theme.dart';

class TAppTheme{
TAppTheme._();

static ThemeData lightTheme =ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,

);
static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,

);

}