import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/core/services/app_preferences.dart';
import 'package:inviduxmobileapp/core/utils/toast.dart';

import '../../../../../core/utils/core.dart';
import '../../widget/header_widget.dart';

class EmailResetPasswordScreen extends ConsumerStatefulWidget {
  const EmailResetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmailResetPasswordScreenState();
}

class _EmailResetPasswordScreenState
    extends ConsumerState<EmailResetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    closeIconButton(context),
                    authHeaderWidget(
                      appString.resetPasswordTitle,
                      subtitle: appString.emailResetPasswordSubtitle,
                    ),
                  ],
                ),
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
                const SizedBox(height: 35),
                submissionButton(
                  context,
                  title: 'Continue',
                  onTap: () {
                    if (emailController.text.isEmpty) {
                      displayErrorToast(context, 'Provide an Email.');
                      FocusScope.of(context).unfocus();
                    } else {
                      AppPreferences.setUserEmail(emailController.text);
                      pushNamed(context, 'resetpassword/otp');
                      // TODO: Implement Provider.
                    }
                  },
                ),
                const SizedBox(height: 35),
                rememberPasswordButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
