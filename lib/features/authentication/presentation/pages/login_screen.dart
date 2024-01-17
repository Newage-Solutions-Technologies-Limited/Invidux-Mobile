import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/core/constants/constants.dart';
import 'package:inviduxmobileapp/core/utils/core.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/widget/header_widget.dart';
import 'package:inviduxmobileapp/features/authentication/presentation/widget/login_fields.dart';

import '../../../../core/constants/social_widget.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    closeIconButton(context),
                    authHeaderWidget(
                      appString.loginTitle,
                      subtitle: appString.loginSubtitle,
                    ),
                  ],
                ),
                const LoginFields(),
                const SizedBox(height: 20),
                authDivider(),
                const SizedBox(height: 20),
                Column(
                  children: socialButtons(),
                ),
                const SizedBox(height: 20),
                donotHaveButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
