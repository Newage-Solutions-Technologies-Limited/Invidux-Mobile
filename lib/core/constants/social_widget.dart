import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inviduxmobileapp/core/utils/core.dart';

List<String> socialButtonTexts = [
  'Google',
  'Facebook',
  'LinkedIn',
  'Apple',
];

List<String> socialButtonIcons = [
  'assets/icons/google.svg',
  'assets/icons/facebook.svg',
  'assets/icons/linkedin.svg',
  'assets/icons/apple.svg',
];
List<void Function()?> socialButtonFunctions = [
  () {
    log('Google');
  },
  () {
    log('Facebook');
  },
  () {
    log('LinkedIn');
  },
  () {
    log('Apple');
  },
];

List<Widget> socialButtons() {
  List<Widget> socialButtonWidgets = [];
  for (int i = 0; i < 4; i++) {
    socialButtonWidgets.add(
      socialButton(
        title: socialButtonTexts[i],
        asset: socialButtonIcons[i],
        width: 350,
        onTap: socialButtonFunctions[i],
      ),
    );
  }
  return socialButtonWidgets;
}
