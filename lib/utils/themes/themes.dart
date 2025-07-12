import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/themes/app_bar_theme.dart';
import 'package:e_commerce_app/utils/themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/themes/chip_theme.dart';
import 'package:e_commerce_app/utils/themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/themes/text_theme.dart';

//using T infornt of custom classes. that makes esier to call custom classes.

class TAppTheme {
  TAppTheme._(); //making the constructor private

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.lightElevatedButton,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.darkElevatedButton,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
