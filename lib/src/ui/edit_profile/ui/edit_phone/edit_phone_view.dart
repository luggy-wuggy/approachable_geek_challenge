import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditPhoneView extends StatelessWidget {
  const EditPhoneView({super.key});

  static const String routeName = 'edit-phone';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeekColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  key: editPhoneBackArrowKey,
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.loc.whatsYouPhoneNumber,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  key: editPhoneTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GeeksInputTextField(
                label: context.loc.yourPhoneNumber,
                key: editPhoneInputFieldKey,
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                onPressed: () {},
                key: editPhoneLongButton,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  static const Key editPhoneBackArrowKey = Key('edit-phone-back-arrow-key');
  static const Key editPhoneTitleKey = Key('edit-phone-title-key');
  static const Key editPhoneInputFieldKey = Key('edit-phone-input-field-key');
  static const Key editPhoneLongButton = Key('edit-phone-long-button-key');
}
