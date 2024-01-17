import 'package:flutter/material.dart';
import 'package:inviduxmobileapp/core/utils/core.dart';

Widget authHeaderWidget(
  String title, {
  String? subtitle,
  bool? useRichText,
  String? text,
  String? subtext,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: semiboldtextStyle(20, appColor.accent),
          ),
          const SizedBox(height: 8),
          useRichText ?? false
              ? RichText(
                  text: TextSpan(
                    text: 'An OTP code has been sent to ',
                    style: regulartextStyle(14, appColor.gray400),
                    children: <TextSpan>[
                      TextSpan(
                        text: '$text, ',
                        style: semiboldtextStyle(14, appColor.gray700),
                      ),
                      TextSpan(
                        text: '$subtext',
                        style: regulartextStyle(14, appColor.gray400),
                      ),
                    ],
                  ),
                )
              : Text(
                  '$subtitle',
                  style: regulartextStyle(14, appColor.gray400),
                ),
        ],
      ),
    );
