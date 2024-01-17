// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:inviduxmobileapp/app/presentation/pages/success_screen.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/pages/registration/complete_registration_screen.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/pages/registration_screen.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/pages/reset_password/otp_reset_password_screen.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/pages/reset_password/email_reset_password_screen.dart';

import '../../app/presentation/pages/onboarding_screen.dart';
import '../../app/provider/auth_state.dart';
import '../../features/authentication/presentation/pages/login_screen.dart';
import '../../features/authentication/presentation/pages/registration/otp_registration_screen.dart';
import '../../features/authentication/presentation/pages/reset_password/reset_password_screen.dart';
import '../utils/core.dart';

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

Widget authDivider() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 100,
          color: appColor.gray400,
        ),
        const SizedBox(width: 20),
        const Text('or login with'),
        const SizedBox(width: 20),
        Container(
          height: 1,
          width: 100,
          color: appColor.gray400,
        ),
      ],
    );

Widget otpTimer(int counter) {
  // Create a periodic timer that fires every 1 second
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Resend OTP Code in ${counter}s',
        style: mediumtextStyle(14, appColor.gray400),
      ),
      const SizedBox(width: 20),
    ],
  );
}

Widget resendOTP(void Function()? onTap) {
  // Create a periodic timer that fires every 1 second
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Didn\'t receive the OTP? ',
        style: mediumtextStyle(14, appColor.gray400),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          'Resend OTP',
          style: mediumtextStyle(14, appColor.secondaryAccent),
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
}

Map<String, Widget Function(BuildContext)> screenRoutes = {
  AuthState.id: (context) => const AuthState(),
  'onboarding': (context) => const OnboardingScreen(),
  'login': (context) => const LoginScreen(),
  'register': (context) => const RegistrationScreen(),
  'resetpassword': (context) => const ResetPasswordScreen(),
  'resetpassword/email': (context) => const EmailResetPasswordScreen(),
  'resetpassword/otp': (context) => const OTPResetPasswordScreen(),
  'reset/success': (context) => SuccessScreen(
        title: appString.resetSuccessButtonTitle,
        description: appString.resetSuccessDescription,
        useIcon: true,
      ),
  'registration/otp': (context) => const OTPRegistrationScreen(),
  'registration/complete': (context) => const CompleteRegistrationScreen(),
  'registration/success': (context) => SuccessScreen(
        title: appString.registrationSuccessButtonTitle,
        description: appString.registrationSuccessDescription,
        useIcon: false,
      ),
};
