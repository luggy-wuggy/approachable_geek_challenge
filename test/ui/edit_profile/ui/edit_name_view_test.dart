import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editNameViewFinder = find.byType(EditNameView);

  final editNameBackArrowFinder = find.byKey(EditNameView.editNameBackArrowKey);
  final editNameTitleFinder = find.byKey(EditNameView.editNameTitleKey);
  final editFirstNameInputFieldFinder =
      find.byKey(EditNameView.editFirstNameInputFieldKey);
  final editLastNameInputFieldFinder =
      find.byKey(EditNameView.editLastNameInputFieldKey);
  final editNameLongButtonFinder = find.byKey(EditNameView.editNameLongButton);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditBioView", () {
    testWidgets(
      'Correctly displays $EditNameView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditNameView()));

        expect(editNameViewFinder, findsOneWidget);
        expect(editNameBackArrowFinder, findsOneWidget);
        expect(editNameTitleFinder, findsOneWidget);
        expect(editFirstNameInputFieldFinder, findsOneWidget);
        expect(editLastNameInputFieldFinder, findsOneWidget);
        expect(editNameLongButtonFinder, findsOneWidget);
      },
    );
  });
}
