import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/ui/widgets/long_button.dart';
import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';

class EditPhotoView extends StatelessWidget {
  const EditPhotoView({super.key});

  static const String routeName = 'edit-photo';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: GeekColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  key: editPhotoBackArrowKey,
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.loc.uploadAPhotoOfYourself,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  key: editPhotoTitleKey,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  // TODO: implement photo feature
                },
                child: Container(
                  height: size.height * 0.35,
                  width: size.height * 0.35,
                  decoration: BoxDecoration(
                    color: GeekColors.kGreyedColor.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.photo_camera_outlined,
                        size: 50,
                      ),
                      Text(
                        context.loc.tapToAddAPhoto,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 3),
              GeeksLongButton(
                label: context.loc.update,
                key: editPhotoLongButtonKey,
                onPressed: () {
                  // TODO: implement photo feature
                  context.pop();
                },
              ),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }

  static const Key editPhotoBackArrowKey = Key('edit-photo-back-arrow-key');
  static const Key editPhotoTitleKey = Key('edit-photo-title-key');
  static const Key editPhotoLongButtonKey = Key('edit-photo-long-button-key');
}
