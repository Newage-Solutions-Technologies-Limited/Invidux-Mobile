import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/social_widget.dart';
import '../../../../core/utils/core.dart';
import '../widget/header_widget.dart';
import '../widget/register_email_fields.dart';

class RegistrationScreen extends ConsumerStatefulWidget {
  const RegistrationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegistrationScreenState();
}

class _RegistrationScreenState extends ConsumerState<RegistrationScreen> {
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
                      appString.registerTitle,
                      subtitle: appString.registerSubtitle,
                    ),
                  ],
                ),
                const EmailRegisterFields(),
                const SizedBox(height: 20),
                authDivider(),
                const SizedBox(height: 20),
                Column(
                  children: socialButtons(),
                ),
                const SizedBox(height: 20),
                alreadyHaveButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
