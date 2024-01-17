import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core.dart';

Widget textInput(
  BuildContext context,
  TextEditingController? controller, {
  int? maxLength,
  int? maxLine,
  double? borderRadiusValue,
  TextStyle? textStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? labelText,
  String? suffixText,
  Widget? icon,
  bool? hideText,
  Color? fillColor,
  Color? borderColor,
  TextInputType? inputType,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  String? validateText,
  void Function(String)? onChanged,
  void Function()? onTap,
  void Function()? onEditingComplete,
}) =>
    Container(
      height: 55,
      decoration: appDecoration.textField(),
      child: TextFormField(
        maxLines: maxLine ?? 1,
        maxLength: maxLength,
        textInputAction: inputAction ?? TextInputAction.next,
        inputFormatters: inputFormatter,
        keyboardType: inputType,
        controller: controller,
        validator: (value) => value!.isEmpty ? validateText : null,
        obscureText: hideText ?? false,
        autofocus: false,
        style: semiboldtextStyle(14, appColor.gray700),
        cursorColor: appColor.accent,
        decoration: InputDecoration(
          filled: false,
          fillColor: fillColor,
          contentPadding:
              const EdgeInsets.only(left: 15, top: 10, bottom: 0, right: 15),
          border: InputBorder.none,
          floatingLabelStyle: mediumtextStyle(16, appColor.gray400, 0.5),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText ?? "Your Hint Text",
          // labelText: labelText ?? "Your Label Text",
          hintStyle: hideText ?? false
              ? regulartextStyle(16, appColor.gray400)
              : regulartextStyle(14, appColor.gray400),
          labelStyle: mediumtextStyle(16, appColor.gray400),
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: icon,
          suffixIconColor: appColor.accent,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
      ),
    );

Widget pinInput(
  BuildContext context,
  TextEditingController controller, {
  int? maxLength,
  double? borderRadiusValue,
  bool? obscureText,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? labelText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    Center(
      child: Container(
        width: 50,
        height: 60,
        decoration: appDecoration.textField(),
        child: TextField(
          maxLength: 1,
          textInputAction: inputAction,
          inputFormatters: inputFormatter,
          controller: controller,
          keyboardType: TextInputType.number,
          autofocus: false,
          style: textStyle ?? mediumtextStyle(20),
          textAlign: textAlign ?? TextAlign.center,
          cursorColor: appColor.accent,
          decoration: InputDecoration(
            filled: false,
            counterText: '',
            contentPadding:
                const EdgeInsets.only(left: 0, top: 10, bottom: 0, right: 0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            // fillColor: fillColor,
            border: InputBorder.none,
            hintText: hintText ?? " ",
            hintStyle: hintStyle ?? regulartextStyle(20, appColor.gray400),
            errorText: errorText,
            prefixText: defaultText,
            prefixStyle: prefixStyle,
            helperText: helperText,
            suffixIcon: icon,
            suffixStyle: suffixStyle,
            suffixText: suffixText,
          ),
          onChanged: onChanged,
        ),
      ),
    );

Widget numberPadInputField(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List.generate(6, (index) {
      String code = '';
      return pinInput(
        context,
        pinControllers[index],
        onChanged: (p0) {
          if (index < 5) {
            code = code + index.toString();
            log(code);
            FocusScope.of(context).nextFocus();
          } else {
            FocusScope.of(context).unfocus();
            if (pinControllers[5].text.isNotEmpty) {}
          }
        },
      );
    }),
  );
}

List<TextEditingController> pinControllers = [
  TextEditingController(),
  TextEditingController(),
  TextEditingController(),
  TextEditingController(),
  TextEditingController(),
  TextEditingController(),
];

// // to add digit on number pad
// void addDigit() {
//   if (code.length > 5) {
//     return;
//   }
//   code = code + code.toString();
//   if (code.length == 6) {
//     log('Code is $code with length ${code.length}');
//   }
//   log('Code is $code with length ${code.length}');
// }

// // to clear field
// backspace() {
//   if (code.isEmpty) {
//     return;
//   }
//   code = code.substring(0, code.length - 1);
//   int currentIndex = code.length;
//   if (code.length == currentIndex) {
//     log('Code is $code with length ${code.length}');
//   }
// }
