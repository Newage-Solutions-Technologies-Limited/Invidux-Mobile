import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/core/utils/core.dart';

class SuccessScreen extends ConsumerWidget {
  final String? description;
  final String? title;
  final bool? useIcon;
  const SuccessScreen({super.key, this.description, this.title, this.useIcon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 205),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '🎉',
                      style: semiboldtextStyle(70),
                    ),
                    Text(
                      'SUCCESS ✅',
                      textAlign: TextAlign.center,
                      style: boldtextStyle(20),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      '$description',
                      textAlign: TextAlign.center,
                      style: regulartextStyle(16, appColor.gray400),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: submissionButton(
                    context,
                    title: '$title',
                    useIcon: useIcon,
                    icon: Icons.arrow_back,
                    onTap: () {
                      // TODO: Implement Provider
                      title == 'Login'
                          ? pushNamed(context, 'login')
                          : pushNamed(context, 'register');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
