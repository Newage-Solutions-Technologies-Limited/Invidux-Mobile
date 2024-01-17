import 'package:flutter/material.dart';

AppColor appColor = AppColor();

class AppColor {
// default style
  final scaffold = const Color(0xFFffffff);
  final black = const Color(0xFF111111);
  final white = const Color(0xffffffff);
  final error = const Color(0xFFD92D20);
  final success = const Color(0xFF027A48);

// gray style
  final gray50 = const Color(0xFFe1e1e1);
  final gray100 = const Color(0xFFF2F4F7);
  final gray400 = const Color(0xFF98A2B3);
  final gray700 = const Color(0xFF344054);

// primary style
  final accent = const Color(0xff13142D);
  final background = const Color(0xff1B1B1B);
  final secondaryAccent = const Color(0xffB1924E);
  final secondaryText = const Color(0xff585978);
}
