import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editBioViewFinder = find.byType(EditBioView);

  final editBioBackArrowFinder = find.byKey(EditBioView.editBioBackArrowKey);
  final editBioTitleFinder = find.byKey(EditBioView.editBioTitleKey);
  final editBioInputFieldFinder = find.byKey(EditBioView.editBioInputFieldKey);
  final editBioLongButtonFinder = find.byKey(EditBioView.editBioLongButton);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditBioView", () {
    testWidgets(
      'Correctly displays $EditBioView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditBioView()));

        expect(editBioViewFinder, findsOneWidget);
        expect(editBioBackArrowFinder, findsOneWidget);
        expect(editBioTitleFinder, findsOneWidget);
        expect(editBioInputFieldFinder, findsOneWidget);
        expect(editBioLongButtonFinder, findsOneWidget);
      },
    );
  });
}
