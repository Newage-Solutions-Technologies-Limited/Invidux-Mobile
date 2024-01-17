import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/core.dart';

class CompleteRegisterFields extends ConsumerStatefulWidget {
  const CompleteRegisterFields({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompleteRegisterFieldsState();
}

class _CompleteRegisterFieldsState
    extends ConsumerState<CompleteRegisterFields> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'First Name',
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              firstNameController,
              hintText: 'First Name',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Name',
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              lastNameController,
              hintText: 'Last Name',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Middle Name (Optional)',
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              middleNameController,
              hintText: 'Middle Name',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone Number',
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              context,
              phoneController,
              hintText: '+2348030112233',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Resident Country',
              style: mediumtextStyle(14, appColor.gray400),
            ),
            const SizedBox(height: 5),
            textInput(
              // TODO: Chnage to dropdown button.
              context,
              passwordController,
              hintText: 'Nigeria',
            ),
          ],
        ),
        // const SizedBox(height: 16),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       appString.passwordLabel,
        //       style: mediumtextStyle(14, appColor.gray400),
        //     ),
        //     const SizedBox(height: 5),
        //     textInput(
        //       context,
        //       passwordController,
        //       hintText: '******',
        //       hideText: true,
        //     ),
        //   ],
        // ),
        const SizedBox(height: 40),
        submissionButton(
          context,
          useFrontIcon: true,
          icon: Icons.arrow_forward,
          onTap: () {
            pushNamed(context, 'registration/success');
          },
          // TODO: Implement Registration Provider.
        ),
      ],
    );
  }
}
