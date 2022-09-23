import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editEmailViewFinder = find.byType(EditEmailView);

  final editEmailBackArrowFinder =
      find.byKey(EditEmailView.editEmailBackArrowKey);
  final editEmailTitleFinder = find.byKey(EditEmailView.editEmailTitleKey);
  final editEmailInputFieldFinder =
      find.byKey(EditEmailView.editEmailInputFieldKey);
  final editEmailLongButtonFinder =
      find.byKey(EditEmailView.editEmailLongButton);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditBioView", () {
    testWidgets(
      'Correctly displays $EditEmailView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditEmailView()));

        expect(editEmailViewFinder, findsOneWidget);
        expect(editEmailBackArrowFinder, findsOneWidget);
        expect(editEmailTitleFinder, findsOneWidget);
        expect(editEmailInputFieldFinder, findsOneWidget);
        expect(editEmailLongButtonFinder, findsOneWidget);
      },
    );
  });
}
