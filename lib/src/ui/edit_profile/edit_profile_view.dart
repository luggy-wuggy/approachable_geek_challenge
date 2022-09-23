import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:go_router/go_router.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  static const String routeName = 'edit-profile';

  @override
  Widget build(BuildContext context) {
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
                const ProfilePhotoCircle(key: profilePhotoCircleKey),
                ProfileInfoTile(
                  label: context.loc.name,
                  description: "Micah Smith",
                  onTap: () {
                    context.pushNamed(EditNameView.routeName);
                  },
                  key: nameProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.phone,
                  description: "(208)206-5039",
                  onTap: () {
                    context.pushNamed(EditPhoneView.routeName);
                  },
                  key: phoneProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.email,
                  description: "micahsmith@gmail.com",
                  onTap: () {
                    context.pushNamed(EditEmailView.routeName);
                  },
                  key: emailProfileInfoTile,
                ),
                ProfileInfoTile(
                  label: context.loc.tellUsAboutYourself,
                  description:
                      "Hi my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty",
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
