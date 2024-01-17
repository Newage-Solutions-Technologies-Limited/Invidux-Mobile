import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/utils/core.dart';
import '../../widget/complete_register_fields.dart';
import '../../widget/header_widget.dart';

class CompleteRegistrationScreen extends ConsumerStatefulWidget {
  const CompleteRegistrationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompleteRegistrationScreenState();
}

class _CompleteRegistrationScreenState
    extends ConsumerState<CompleteRegistrationScreen> {
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
                      appString.completeRegisterTitle,
                      subtitle: appString.completeRegisterSubtitle,
                    ),
                  ],
                ),
                const CompleteRegisterFields(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
