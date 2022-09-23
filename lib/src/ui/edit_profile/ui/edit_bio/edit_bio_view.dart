import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditBioView extends StatelessWidget {
  const EditBioView({super.key});

  static const String routeName = 'edit-bio';

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
                  key: editBioBackArrowKey,
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.loc.whatTypeOfPassenger,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  key: editBioTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GeeksInputTextField(
                hint: context.loc.bioTextFieldDescription,
                maxLines: 5,
                key: editBioInputFieldKey,
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                onPressed: () {},
                key: editBioLongButton,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  static const Key editBioBackArrowKey = Key('edit-bio-back-arrow-key');
  static const Key editBioTitleKey = Key('edit-bio-title-key');
  static const Key editBioInputFieldKey = Key('edit-bio-input-field-key');
  static const Key editBioLongButton = Key('edit-bio-long-button-key');
}
