import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/utils/core.dart';
import '../../widget/header_widget.dart';
import '../../widget/reset_fields.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
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
                    appString.resetPasswordTitle,
                    subtitle: appString.resetPasswordSubtitle,
                  ),
                  const ResetFields(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
