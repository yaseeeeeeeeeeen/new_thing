import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/themes/color_theme.dart';

final ThemeData darkTheme = ThemeData(
  listTileTheme: const ListTileThemeData(textColor: Colors.white),
  fontFamily: "Poppins",
  brightness: Brightness.dark,
  primaryColor: ColorThemeData.mainColor,
//  accentColor: Colors.tealAccent,
  // Define other dark theme properties as needed
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    color: ColorThemeData.mainColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white70),
    // Define other text styles as needed
  ),
  // Customize other properties like button themes, input decoration themes, etc.
);
