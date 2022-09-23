import 'package:approachable_geek_challenge/src/common/constants/text_formatter.dart';
import 'package:approachable_geek_challenge/src/ui/controllers/account_info_controller.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditProfileView extends ConsumerWidget {
  const EditProfileView({super.key});

  static const String routeName = 'edit-profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AccountInfoModel account = ref.watch(accountInfoProvider);

    return Scaffold(
      backgroundColor: GeekColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  context.loc.editProfile,
                  style: const TextStyle(
                    color: GeekColors.kPrimaryAccentColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  key: editProfileTitleKey,
                ),
                const SizedBox(height: 12),
                ProfilePhotoCircle(
                  key: profilePhotoCircleKey,
                  onTap: () {
                    context.pushNamed(EditPhotoView.routeName);
                  },
                ),
                ProfileInfoTile(
                  label: context.loc.name,
                  description:
                      "${account.firstName ?? ""} ${account.lastName ?? ""}",
                  onTap: () {
                    context.pushNamed(EditNameView.routeName);
                  },
                  key: nameProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.phone,
                  description: GeeksTextFormatter.phoneNumberTextFormatter
                      .maskText(account.phoneNumber.toString()),
                  onTap: () {
                    context.pushNamed(EditPhoneView.routeName);
                  },
                  key: phoneProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.email,
                  description: account.email ?? "",
                  onTap: () {
                    context.pushNamed(EditEmailView.routeName);
                  },
                  key: emailProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.tellUsAboutYourself,
                  description: account.bio ?? "",
                  onTap: () {
                    context.pushNamed(EditBioView.routeName);
                  },
                  key: bioProfileInfoTile,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static const Key editProfileTitleKey = Key('edit-profile-title-key');
  static const Key profilePhotoCircleKey = Key('edit-profile-circle-key');
  static const Key nameProfileInfoTile = Key('name-profile-info-tile-key');
  static const Key phoneProfileInfoTile = Key('phone-profile-info-tile-key');
  static const Key emailProfileInfoTile = Key('email-profile-info-tile-key');
  static const Key bioProfileInfoTile = Key('bio-profile-info-tile-key');
}
