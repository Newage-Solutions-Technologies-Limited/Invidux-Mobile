import 'package:flutter/material.dart';

import 'colors.dart';

AppDecoration appDecoration = AppDecoration();

class AppDecoration {
  BoxDecoration defaultButton({Color? bgColor, double? radius}) {
    return BoxDecoration(
      color: bgColor ?? appColor.accent,
      borderRadius: BorderRadius.circular(radius ?? 8),
    );
  }

  BoxDecoration outlineButton({Color? bgColor, double? radius}) {
    return BoxDecoration(
      color: bgColor ?? appColor.accent,
      border: Border.all(style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(radius ?? 8),
    );
  }

  BoxDecoration textField() => BoxDecoration(
        // color: appColor.gray100,
        border: Border.all(color: appColor.gray400),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );

  BoxDecoration toast(Color color) => BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      );

  BoxDecoration text() => BoxDecoration(
        color: appColor.accent.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      );
}
