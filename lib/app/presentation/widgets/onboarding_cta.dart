import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/core.dart';

class OnboardingCTA extends ConsumerWidget {
  const OnboardingCTA({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Text(
            appString.onboardingCTAText,
            style: mediumtextStyle(14, appColor.secondaryText),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              submissionButton(
                context,
                title: 'Join Invidux',
                width: 170,
                onTap: () => pushNamed(context, 'register'),
              ),
              const SizedBox(width: 12),
              submissionButton(
                context,
                title: 'Login',
                color: appColor.accent,
                width: 170,
                useOutline: true,
                onTap: () => pushNamed(context, 'login'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
