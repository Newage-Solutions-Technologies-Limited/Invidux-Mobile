import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/core.dart';

class ResetFields extends ConsumerStatefulWidget {
  const ResetFields({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResetFieldsState();
}

class _ResetFieldsState extends ConsumerState<ResetFields> {
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
              appString.newPasswordLabel,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appString.confirmNewPasswordLabel,
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
        const SizedBox(height: 40),
        submissionButton(
          context,
          title: 'Reset Password',
          onTap: () {
            pushNamed(context, 'reset/success');
            // TODO: Implement Reset Provider.
          },
        ),
      ],
    );
  }
}
