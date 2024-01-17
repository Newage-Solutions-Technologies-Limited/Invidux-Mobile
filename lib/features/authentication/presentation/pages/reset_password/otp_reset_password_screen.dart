import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/core/constants/constants.dart';
import 'package:inviduxmobileapp/core/services/app_preferences.dart';

import '../../../../../core/utils/core.dart';
import '../../widget/header_widget.dart';

class OTPResetPasswordScreen extends ConsumerStatefulWidget {
  const OTPResetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OTPResetPasswordScreenState();
}

class _OTPResetPasswordScreenState
    extends ConsumerState<OTPResetPasswordScreen> {
  int countdown = 60;

  @override
  void initState() {
    super.initState();
    countdownMethod();
  }

  void countdownMethod() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
      } else {
        // Cancel the timer when the countdown reaches 0
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String email = AppPreferences.getUserEmail().toString();

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
                      useRichText: true,
                      text: email,
                      subtext: 'enter code below to reset your password.',
                    ),
                    numberPadInputField(context),
                    const SizedBox(height: 40),
                    otpTimer(countdown),
                    const SizedBox(height: 20),
                    resendOTP(
                      () {
                        setState(() {
                          countdown = 60;
                        });
                        countdownMethod();
                        // TODO: Implement resend OTP provider.
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                submissionButton(
                  context,
                  title: 'Change your email',
                  useIcon: true,
                  icon: Icons.arrow_back,
                  onTap: () {
                    pushNamed(context, 'resetpassword');
                    //TODO: impelement reset submit otp provider.
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
