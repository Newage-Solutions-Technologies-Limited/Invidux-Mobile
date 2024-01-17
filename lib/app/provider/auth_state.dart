import 'package:flutter/material.dart';
import 'package:inviduxmobileapp/core/services/app_preferences.dart';

import '../../features/authentication/presentation/pages/login_screen.dart';
import '../presentation/pages/onboarding_screen.dart';

class AuthState extends StatelessWidget {
  static const String id = '/';

  const AuthState({super.key});

  Widget checkUserState(State state) {
    return state == State.existingUser
        ? const LoginScreen()
        : const OnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = AppPreferences.getLoginData() ?? false;
    return checkUserState(isLoggedIn ? State.existingUser : State.newUser);
  }
}

enum State { newUser, existingUser }
