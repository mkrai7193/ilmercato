import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorDark: Colors.white,
    backgroundColor: Colors.white,
    fontFamily: "poppins",
    // appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,

    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: kPrimaryDarkColor,
      onPrimary: kPrimaryColor,
      secondary: kDarkTextColor,
      onSecondary: kSecondaryColor,
      background: kPrimaryDarkColor,
      onBackground: kPrimaryDarkColor,
      surface: kPrimaryDarkColor,
      onSurface: kPrimaryDarkColor,
      error: Colors.black,
      onError: Colors.black,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    errorStyle: TextStyle(color: Colors.red),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kDarkTextColor),
    bodyText2: TextStyle(color: kDarkTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.yellow,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.yellow), systemOverlayStyle: SystemUiOverlayStyle.dark, toolbarTextStyle: TextTheme(
      headline6: TextStyle(color: Colors.yellow, fontSize: 18),
    ).bodyText2, titleTextStyle: TextTheme(
      headline6: TextStyle(color: Colors.yellow, fontSize: 18),
    ).headline6,
  );
}
