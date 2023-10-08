import 'package:flutter/material.dart';

import 'color_constants.dart';
import 'fonts.dart';

class TextStyles {
  static TextStyle whiteText = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font12,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.primaryWhite);
  static TextStyle mainButton = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: Fonts.font16,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.primaryWhite);
  static TextStyle selectedNavBar = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font12,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.primaryBlue);
  static TextStyle unselectedNavBar = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font12,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.darkColor);
  static TextStyle logindHeaderText = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: Fonts.font20,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.darkColor);
  static TextStyle headerText = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: Fonts.font16,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.darkColor);
  static TextStyle forgotPassword = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font14,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.forgotPassword);
  static TextStyle greyText = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font12,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.forgotPassword);
  static TextStyle containerText = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Fonts.font14,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.darkColor);
  static TextStyle underLined = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: Fonts.font12,
      fontFamily: Fonts.fontFamily,
      color: ColorConstants.darkColor,
      decoration: TextDecoration.underline);

  TextStyles._();
}
