import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/app/presentation/widgets/onboarding_cta.dart';

import '../../../core/constants/constants.dart';
import '../widgets/image_widget.dart';
import '../../../core/constants/social_widget.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageWidget(),
            const OnboardingCTA(),
            authDivider(),
            const SizedBox(height: 10),
            Column(
              children: socialButtons(),
            )
          ],
        ),
      ),
    );
  }
}
