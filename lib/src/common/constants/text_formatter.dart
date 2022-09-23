import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class GeeksTextFormatter {
  static MaskTextInputFormatter phoneNumberTextFormatter(
          {String? initialText}) =>
      MaskTextInputFormatter(
        mask: '(###) ###-####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
        initialText: initialText,
      );
}
