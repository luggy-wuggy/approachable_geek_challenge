import 'package:approachable_geek_challenge/src/common/constants/text_formatter.dart';
import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  const mockedFirstName = "bob";
  const mockedLastName = "test";
  const mockedPhoneNumber = 1234567890;
  const mockedEmail = "bobtest@gmail.com";
  const mockedBio = "I am a test bio";

  Widget buildTestableWidget({
    required Widget widget,
    AccountInfoModel? account,
  }) {
    return ProviderScope(
      overrides: account != null
          ? [
              accountInfoProvider.overrideWithProvider(
                mockAccountInfoProvider(account),
              )
            ]
          : [],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }

  group("EditProfileView", () {
    testWidgets(
      'Correctly displays $EditProfileView',
      (WidgetTester tester) async {
        const AccountInfoModel mockedAccount = AccountInfoModel(
          firstName: mockedFirstName,
          lastName: mockedLastName,
          phoneNumber: mockedPhoneNumber,
          email: mockedEmail,
          bio: mockedBio,
        );

        await tester.pumpWidget(
          buildTestableWidget(
            widget: const EditProfileView(),
            account: mockedAccount,
          ),
        );

        expect(editProfileViewFinder, findsOneWidget);

        expect(editProfileTitleFinder, findsOneWidget);
        expect(profilePhotoCircleFinder, findsOneWidget);
        expect(nameProfileInfoTileFinder, findsOneWidget);
        expect(phoneProfileInfoTileFinder, findsOneWidget);
        expect(emailProfileInfoTileFinder, findsOneWidget);
        expect(bioProfileInfoTileFinder, findsOneWidget);

        expect(find.text("$mockedFirstName $mockedLastName"), findsOneWidget);
        expect(find.text(mockedEmail), findsOneWidget);
        expect(find.text(mockedBio), findsOneWidget);
        expect(
            find.text(GeeksTextFormatter.phoneNumberTextFormatter()
                .maskText(mockedPhoneNumber.toString())),
            findsOneWidget);
      },
    );
  });
}

StateNotifierProvider<AccountInfoController, AccountInfoModel>
    mockAccountInfoProvider(AccountInfoModel mockedAccount) =>
        StateNotifierProvider<AccountInfoController, AccountInfoModel>(
            (ref) => AccountInfoController(account: mockedAccount));
