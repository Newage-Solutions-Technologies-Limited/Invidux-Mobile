import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/utils/core.dart';

class ImageWidget extends ConsumerWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(appString.onboardingImageUrl),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 35),
          child: Text(
            appString.onboardingIamgeText,
            style: semiboldtextStyle(36, appColor.white),
          ),
        ),
      ],
    );
  }
}
