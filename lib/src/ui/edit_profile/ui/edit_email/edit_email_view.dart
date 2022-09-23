import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditEmailView extends ConsumerStatefulWidget {
  const EditEmailView({super.key});

  static const String routeName = 'edit-email';

  @override
  EditEmailViewState createState() => EditEmailViewState();

  static const Key editEmailBackArrowKey = Key('edit-email-back-arrow-key');
  static const Key editEmailTitleKey = Key('edit-email-title-key');
  static const Key editEmailInputFieldKey = Key('edit-email-input-field-key');
  static const Key editEmailLongButton = Key('edit-email-long-button-key');
}

class EditEmailViewState extends ConsumerState<EditEmailView> {
  late TextEditingController emailTextController;

  @override
  void initState() {
    emailTextController = TextEditingController(
      text: ref.read(accountInfoProvider).email,
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
                  key: EditEmailView.editEmailBackArrowKey,
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.loc.whatsYourEmail,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  key: EditEmailView.editEmailTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GeeksInputTextField(
                key: EditEmailView.editEmailInputFieldKey,
                label: context.loc.yourEmailAddress,
                textEditingController: emailTextController,
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                onPressed: () async {
                  ref
                      .read(accountInfoProvider.notifier)
                      .updateEmail(emailTextController.text);
                  if (!mounted) return;
                  context.pop();
                },
                key: EditEmailView.editEmailLongButton,
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
    emailTextController.dispose();
    super.dispose();
  }
}
