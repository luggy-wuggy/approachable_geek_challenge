import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final editProfileViewFinder = find.byType(EditProfileView);

  final editProfileTitleFinder =
      find.byKey(EditProfileView.editProfileTitleKey);
  final profilePhotoCircleFinder =
      find.byKey(EditProfileView.profilePhotoCircleKey);
  final nameProfileInfoTileFinder =
      find.byKey(EditProfileView.nameProfileInfoTile);
  final phoneProfileInfoTileFinder =
      find.byKey(EditProfileView.phoneProfileInfoTile);
  final emailProfileInfoTileFinder =
      find.byKey(EditProfileView.emailProfileInfoTile);
  final bioProfileInfoTileFinder =
      find.byKey(EditProfileView.bioProfileInfoTile);

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );
  }

  group("EditProfileView", () {
    testWidgets(
      'Correctly displays $EditProfileView',
      (WidgetTester tester) async {
        await tester.pumpWidget(buildTestableWidget(const EditProfileView()));

        expect(editProfileViewFinder, findsOneWidget);

        expect(editProfileTitleFinder, findsOneWidget);
        expect(profilePhotoCircleFinder, findsOneWidget);
        expect(nameProfileInfoTileFinder, findsOneWidget);
        expect(phoneProfileInfoTileFinder, findsOneWidget);
        expect(emailProfileInfoTileFinder, findsOneWidget);
        expect(bioProfileInfoTileFinder, findsOneWidget);
      },
    );
  });
}
