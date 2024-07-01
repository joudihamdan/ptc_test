import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/values_manager.dart';
import 'color_manager.dart';

class StyleManager {
  static TextStyle boldTextStyle(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s30,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle onboardingTextStyle(
      {Color color = ColorManager.greyText,
      double size = AppSize.s18,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle normalTextStyle(
      {Color color = ColorManager.blackColor,
        double size = AppSize.s14,
        FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle iconNameTextStyle(
      {Color color = ColorManager.lightGery,
        double size = AppSize.s12,
        FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle headerTextStyle(
      {Color color = ColorManager.blackColor,
        double size = AppSize.s20,
        FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle subHeaderTextStyle(
      {Color color = ColorManager.blackColor,
        double size = AppSize.s16,
        FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle detailsTextStyle(
      {Color color = ColorManager.detailsColor,
        double size = AppSize.s16,
        FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle buttonTextTextStyle(
      {Color color = ColorManager.blackColor,
        double size = AppSize.s16,
        FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

}
