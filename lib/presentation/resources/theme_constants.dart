import 'package:flutter/material.dart';

import 'resources_export.dart';

class ThemeConstants {
  ThemeConstants._();

  static ThemeData mainTheme = ThemeData(
    //primaryColor: ColorConstants.primaryColor,
    fontFamily: Fonts.fontFamily,
    scaffoldBackgroundColor: ColorConstants.primaryWhite,
    // indicatorColor: ColorConstants.primaryBlue,
    canvasColor: ColorConstants.primaryBlue,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle:
            TextStyles.selectedNavBar.copyWith(fontSize: Fonts.font12),
        unselectedLabelStyle:
            TextStyles.unselectedNavBar.copyWith(fontSize: Fonts.font12),
        selectedItemColor: ColorConstants.primaryBlue,
        unselectedItemColor: ColorConstants.darkColor,
        backgroundColor: ColorConstants.primaryWhite),
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConstants.primaryWhite,
        primary: ColorConstants.primaryBlue,
        brightness: Brightness.light,
        error: ColorConstants.redColor),
  );
}
