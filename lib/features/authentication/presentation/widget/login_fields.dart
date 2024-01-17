import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/core.dart';

class LoginFields extends ConsumerStatefulWidget {
  const LoginFields({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends ConsumerState<LoginFields> {
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
            const SizedBox(height: 8),
            forgotPasswordButton(context),
          ],
        ),
        const SizedBox(height: 32),
        submissionButton(
          context,
          title: 'Sign-in',
          // TODO: Implement Login Provider.
        ),
      ],
    );
  }
}
