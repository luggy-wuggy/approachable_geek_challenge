import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editPhoneViewFinder = find.byType(EditPhoneView);

  final editPhoneBackArrowFinder =
      find.byKey(EditPhoneView.editPhoneBackArrowKey);
  final editPhoneTitleFinder = find.byKey(EditPhoneView.editPhoneTitleKey);
  final editPhoneInputFieldFinder =
      find.byKey(EditPhoneView.editPhoneInputFieldKey);
  final editPhoneLongButtonFinder =
      find.byKey(EditPhoneView.editPhoneLongButton);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditPhoneView", () {
    testWidgets(
      'Correctly displays $EditPhoneView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditPhoneView()));

        expect(editPhoneViewFinder, findsOneWidget);
        expect(editPhoneBackArrowFinder, findsOneWidget);
        expect(editPhoneTitleFinder, findsOneWidget);
        expect(editPhoneInputFieldFinder, findsOneWidget);
        expect(editPhoneLongButtonFinder, findsOneWidget);
      },
    );
  });
}
