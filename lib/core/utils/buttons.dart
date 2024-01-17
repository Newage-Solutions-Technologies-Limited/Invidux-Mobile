import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core.dart';

// general submission widget.
Widget submissionButton(
  BuildContext context, {
  double? height,
  double? width,
  double? radius,
  String? title,
  Color? color,
  Color? bgColor,
  bool? useIcon,
  bool? useFrontIcon,
  bool? useOutline,
  bool? loading,
  IconData? icon,
  void Function()? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 55,
        width: width,
        decoration: useOutline ?? false
            ? appDecoration.outlineButton(bgColor: appColor.white)
            : appDecoration.defaultButton(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            useIcon ?? false
                ? Icon(
                    icon,
                    size: 24,
                    color: color ?? appColor.white,
                  )
                : Container(),
            const SizedBox(width: 8),
            Text(
              title ?? 'Submit',
              style: regulartextStyle(16, color ?? appColor.white),
            ),
            const SizedBox(width: 8),
            useFrontIcon ?? false
                ? Icon(
                    icon,
                    size: 24,
                    color: color ?? appColor.white,
                  )
                : Container(),
          ],
        ),
      ),
    );

// close icon button widget.
Widget closeIconButton(BuildContext context, [Widget? icon]) => GestureDetector(
      onTap: () => pop(context),
      child: SizedBox(
        height: 45,
        width: 45,
        child: icon ?? const Icon(CupertinoIcons.arrow_left),
      ),
    );

// social button widget.
Widget socialButton({
  String? asset,
  String? title,
  double? width,
  void Function()? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 45,
          width: width,
          decoration: appDecoration.outlineButton(bgColor: appColor.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  asset ?? '',
                ),
                const SizedBox(width: 50),
                Text(
                  'Continue with $title',
                  style: semiboldtextStyle(14, appColor.accent),
                )
              ],
            ),
          ),
        ),
      ),
    );

// forgot password button.
Widget forgotPasswordButton(BuildContext context) {
  return InkWell(
    onTap: () => pushNamed(context, 'resetpassword/email'),
    child: Text(
      'Forgot Password?',
      style: mediumtextStyle(14, appColor.accent),
    ),
  );
}

// agree to terms button.
Widget agreeToTermsButton(
  BuildContext context, {
  bool? value,
  void Function(bool?)? onChanged,
}) {
  return Row(
    children: [
      Checkbox(
        value: value ?? false,
        onChanged: onChanged,
        side: BorderSide(color: appColor.gray400),
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColor.secondaryAccent;
            } else {
              return appColor.white; // Default color
            }
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      InkWell(
        onTap: () => pushNamed(context, 'resetpassword/email'),
        child: RichText(
          text: TextSpan(
            text: 'I agree to Invidux’s ',
            style: regulartextStyle(14, appColor.gray700),
            children: <TextSpan>[
              TextSpan(
                text: 'Terms of use and \n Privacy Policy',
                style: semiboldtextStyle(14, appColor.secondaryAccent),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

// widget to display do not have account button.
Widget donotHaveButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don’t have an account?',
        style: mediumtextStyle(14, appColor.gray700),
      ),
      const SizedBox(width: 8),
      InkWell(
        onTap: () => pushNamed(context, 'register'),
        child: Text(
          'Register',
          style: mediumtextStyle(16, appColor.secondaryAccent),
        ),
      ),
    ],
  );
}

// widget to display already have account button.
Widget alreadyHaveButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an account?',
        style: mediumtextStyle(14, appColor.gray700),
      ),
      const SizedBox(width: 8),
      InkWell(
        onTap: () => pushNamed(context, 'login'),
        child: Text(
          'Login',
          style: mediumtextStyle(16, appColor.secondaryAccent),
        ),
      ),
    ],
  );
}

// widget to display remember password button.
Widget rememberPasswordButton(BuildContext context) {
  return Row(
    children: [
      Text(
        'Remember your password?',
        style: mediumtextStyle(14, appColor.gray700),
      ),
      const SizedBox(width: 8),
      InkWell(
        onTap: () => pushNamed(context, 'login'),
        child: Text(
          'Login',
          style: mediumtextStyle(16, appColor.secondaryAccent),
        ),
      ),
    ],
  );
}
