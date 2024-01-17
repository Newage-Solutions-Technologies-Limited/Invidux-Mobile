import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/services/app_preferences.dart';
import '../../../../core/utils/core.dart';

class EmailRegisterFields extends ConsumerStatefulWidget {
  const EmailRegisterFields({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmailRegisterFieldsState();
}

class _EmailRegisterFieldsState extends ConsumerState<EmailRegisterFields> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appString.emailLabel,
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              emailController,
              hintText: 'Email Address',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appString.passwordLabel,
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              passwordController,
              hintText: '******',
              hideText: true,
            ),
          ],
        ),
        const SizedBox(height: 16),
        agreeToTermsButton(context),
        const SizedBox(height: 32),
        submissionButton(
          context,
          title: 'Register',
          onTap: () {
            if (emailController.text.isEmpty) {
              displayErrorToast(context, 'Provide an Email.');
              FocusScope.of(context).unfocus();
            } else {
              AppPreferences.setUserEmail(emailController.text);
              pushNamed(context, 'registration/otp');
              // TODO: Implement Registration Provider.
            }
          },
        ),
        const SizedBox(height: 24),
        Text(
          'We\'ll email you an OTP. Check your inbox and spam folder.',
          textAlign: TextAlign.center,
          style: mediumtextStyle(14),
        )
      ],
    );
  }
}
