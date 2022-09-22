import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  static const String routeName = 'edit-name';

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
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.loc.whatsYourName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: GeeksInputTextField(label: context.loc.firstName)),
                  const SizedBox(width: 12),
                  Expanded(
                      child: GeeksInputTextField(label: context.loc.lastName))
                ],
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                onPressed: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
