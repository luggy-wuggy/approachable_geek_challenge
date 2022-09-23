import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editPhotoViewFinder = find.byType(EditPhotoView);

  final editPhotoBackArrowFinder =
      find.byKey(EditPhotoView.editPhotoBackArrowKey);
  final editPhotoTitleFinder = find.byKey(EditPhotoView.editPhotoTitleKey);
  final editPhotoLongButtonFinder =
      find.byKey(EditPhotoView.editPhotoLongButtonKey);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditPhotoView", () {
    testWidgets(
      'Correctly displays $EditPhotoView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditPhotoView()));

        expect(editPhotoViewFinder, findsOneWidget);
        expect(editPhotoBackArrowFinder, findsOneWidget);
        expect(editPhotoTitleFinder, findsOneWidget);
        expect(editPhotoLongButtonFinder, findsOneWidget);
      },
    );
  });
}
