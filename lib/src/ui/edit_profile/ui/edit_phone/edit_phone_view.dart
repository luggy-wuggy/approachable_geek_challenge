import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:approachable_geek_challenge/src/common/common.dart';
import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/input_text_field.dart';
import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';

class EditPhoneView extends ConsumerStatefulWidget {
  const EditPhoneView({super.key});

  static const String routeName = 'edit-phone';

  @override
  EditPhoneViewState createState() => EditPhoneViewState();

  static const Key editPhoneBackArrowKey = Key('edit-phone-back-arrow-key');
  static const Key editPhoneTitleKey = Key('edit-phone-title-key');
  static const Key editPhoneInputFieldKey = Key('edit-phone-input-field-key');
  static const Key editPhoneLongButton = Key('edit-phone-long-button-key');
}

class EditPhoneViewState extends ConsumerState<EditPhoneView> {
  late final TextEditingController phoneTextController;
  late final MaskTextInputFormatter maskFormatter;

  @override
  void initState() {
    maskFormatter = GeeksTextFormatter.phoneNumberTextFormatter(
      initialText: ref.read(accountInfoProvider).phoneNumber.toString(),
    );

    final String initialText = maskFormatter.maskText(
      ref.read(accountInfoProvider).phoneNumber.toString(),
    );

    phoneTextController = TextEditingController(text: initialText);
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
                  key: EditPhoneView.editPhoneBackArrowKey,
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
                  key: EditPhoneView.editPhoneTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GeeksInputTextField(
                key: EditPhoneView.editPhoneInputFieldKey,
                label: context.loc.yourPhoneNumber,
                textEditingController: phoneTextController,
                textInputType: TextInputType.phone,
                textInputFormatters: [maskFormatter],
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                key: EditPhoneView.editPhoneLongButton,
                label: context.loc.update,
                onPressed: () {
                  if (phoneTextController.text.isEmpty) return;

                  final int number = int.parse(
                      maskFormatter.unmaskText(phoneTextController.text));

                  ref
                      .read(accountInfoProvider.notifier)
                      .updatePhoneNumber(number);

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
    phoneTextController.dispose();
    super.dispose();
  }
}
