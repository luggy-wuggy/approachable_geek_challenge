import 'package:flutter/material.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:approachable_geek_challenge/src/ui/edit_profile/widgets/widgets.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeekColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: GeekColors.kPrimaryAccentColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                const ProfilePhotoCircle(),
                ProfileInfoTile(
                  label: "Name",
                  description: "Micah Smith",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Scaffold(
                          backgroundColor: Colors.green,
                        ),
                      ),
                    );
                  },
                ),
                ProfileInfoTile(
                  label: "Phone",
                  description: "(208)206-5039",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Scaffold(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    );
                  },
                ),
                ProfileInfoTile(
                  label: "Email",
                  description: "micahsmith@gmail.com",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Scaffold(
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                    );
                  },
                ),
                ProfileInfoTile(
                  label: "Tell us about yourself",
                  description:
                      "Hi my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Scaffold(
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
