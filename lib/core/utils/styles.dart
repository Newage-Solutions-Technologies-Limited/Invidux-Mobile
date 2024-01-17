import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle boldtextStyle(double fontSize, [Color? color, double? spacing]) =>
    TextStyle(
        color: color ?? appColor.black,
        fontSize: fontSize,
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w700,
        letterSpacing: spacing ?? 0);

TextStyle semiboldtextStyle(double fontSize, [Color? color, double? spacing]) =>
    TextStyle(
        color: color ?? appColor.black,
        fontSize: fontSize,
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w600,
        letterSpacing: spacing ?? 0);

TextStyle mediumtextStyle(double fontSize, [Color? color, double? spacing]) =>
    TextStyle(
        color: color ?? appColor.black,
        fontSize: fontSize,
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w500,
        letterSpacing: spacing ?? 0);

TextStyle regulartextStyle(double fontSize, [Color? color, double? spacing]) =>
    TextStyle(
        color: color ?? appColor.black,
        fontSize: fontSize,
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w400,
        letterSpacing: spacing ?? 0);

TextStyle thintextStyle(double fontSize, [Color? color, double? spacing]) =>
    TextStyle(
        color: color ?? appColor.black,
        fontSize: fontSize,
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w300,
        letterSpacing: spacing ?? 0);
