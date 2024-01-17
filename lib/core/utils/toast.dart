import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
// import 'package:motion_toast/resources/arrays.dart';

import 'core.dart';

displayErrorToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Container(
      decoration: appDecoration.toast(appColor.error),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: mediumtextStyle(14, appColor.white),
          ),
        ),
      ),
    ),
    primaryColor: appColor.white.withOpacity(0),
    displaySideBar: false,
    enableAnimation: false,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    animationDuration: const Duration(seconds: 0),
    dismissable: false,
  ).show(context);
}

displaySuccessToast(BuildContext context, String description,
    {Function? onClose}) {
  MotionToast(
    description: Container(
      decoration: appDecoration.toast(appColor.success),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: mediumtextStyle(14, appColor.white),
          ),
        ),
      ),
    ),
    primaryColor: appColor.white.withOpacity(0),
    displaySideBar: false,
    enableAnimation: false,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    padding: const EdgeInsets.only(left: 70, right: 70),
    dismissable: false,
    onClose: onClose,
  ).show(context);
}

displayInfoToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Container(
      decoration: appDecoration.toast(appColor.gray50),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: mediumtextStyle(14, appColor.white),
          ),
        ),
      ),
    ),
    primaryColor: appColor.white.withOpacity(0),
    displaySideBar: false,
    enableAnimation: false,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    padding: const EdgeInsets.only(left: 70, right: 70),
    dismissable: false,
  ).show(context);
}
