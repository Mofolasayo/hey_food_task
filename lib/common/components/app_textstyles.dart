import 'package:flutter/material.dart';

class AppTextStyles {
  static const Color defaultColor = Color(0xFF000000);
  static double defaultFontSize = 16;

  static TextStyle thin({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w100,
    );
  }

  static TextStyle extraLight({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle light({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle regular({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle extraBold({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle black({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      fontSize: fontSize ?? defaultFontSize,
      color: color ?? defaultColor,
      fontWeight: FontWeight.w900,
    );
  }
}
