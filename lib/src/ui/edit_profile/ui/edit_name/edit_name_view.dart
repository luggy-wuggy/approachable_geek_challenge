import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:approachable_geek_challenge/src/common/common.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditNameView extends ConsumerStatefulWidget {
  const EditNameView({super.key});

  static const String routeName = 'edit-name';

  @override
  EditNameViewState createState() => EditNameViewState();

  static const Key editNameBackArrowKey = Key('edit-name-back-arrow-key');
  static const Key editNameTitleKey = Key('edit-name-title-key');
  static const Key editFirstNameInputFieldKey =
      Key('edit-first-name-input-field-key');
  static const Key editLastNameInputFieldKey =
      Key('edit-last-name-input-field-key');
  static const Key editNameLongButton = Key('edit-name-long-button-key');
}

class EditNameViewState extends ConsumerState<EditNameView> {
  late final TextEditingController firstNameTextController;
  late final TextEditingController lastNameTextController;

  @override
  void initState() {
    firstNameTextController = TextEditingController(
      text: ref.read(accountInfoProvider).firstName,
    );
    lastNameTextController = TextEditingController(
      text: ref.read(accountInfoProvider).lastName,
    );
    super.initState();
  }

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
                  key: EditNameView.editNameBackArrowKey,
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
                  key: EditNameView.editNameTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: GeeksInputTextField(
                      key: EditNameView.editFirstNameInputFieldKey,
                      label: context.loc.firstName,
                      textEditingController: firstNameTextController,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: GeeksInputTextField(
                      key: EditNameView.editLastNameInputFieldKey,
                      label: context.loc.lastName,
                      textEditingController: lastNameTextController,
                    ),
                  )
                ],
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                onPressed: () async {
                  await ref
                      .read(accountInfoProvider.notifier)
                      .updateFirstName(firstNameTextController.text);
                  await ref
                      .read(accountInfoProvider.notifier)
                      .updateLastName(lastNameTextController.text);
                  if (!mounted) return;
                  context.pop();
                },
                key: EditNameView.editNameLongButton,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstNameTextController.dispose();
    lastNameTextController.dispose();
    super.dispose();
  }
}
