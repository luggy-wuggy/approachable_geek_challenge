import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/common/common.dart';
import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditBioView extends ConsumerStatefulWidget {
  const EditBioView({super.key});

  static const String routeName = 'edit-bio';

  @override
  EditBioViewState createState() => EditBioViewState();

  static const Key editBioBackArrowKey = Key('edit-bio-back-arrow-key');
  static const Key editBioTitleKey = Key('edit-bio-title-key');
  static const Key editBioInputFieldKey = Key('edit-bio-input-field-key');
  static const Key editBioLongButton = Key('edit-bio-long-button-key');
}

class EditBioViewState extends ConsumerState<EditBioView> {
  late TextEditingController bioTextController;

  @override
  void initState() {
    bioTextController = TextEditingController(
      text: ref.read(accountInfoProvider).bio,
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
                  key: EditBioView.editBioBackArrowKey,
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
                  key: EditBioView.editBioTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GeeksInputTextField(
                key: EditBioView.editBioInputFieldKey,
                hint: context.loc.bioTextFieldDescription,
                maxLines: 5,
                textEditingController: bioTextController,
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                key: EditBioView.editBioLongButton,
                label: context.loc.update,
                onPressed: () {
                  ref
                      .read(accountInfoProvider.notifier)
                      .updateBio(bioTextController.text);
                  if (!mounted) return;
                  context.pop();
                },
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
    bioTextController.dispose();
    super.dispose();
  }
}
