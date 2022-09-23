import 'package:flutter/material.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';

class ProfilePhotoCircle extends StatelessWidget {
  const ProfilePhotoCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width * 0.3,
          height: size.width * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: GeekColors.kPrimaryAccentColor, width: 7),
          ),
          child: Icon(
            Icons.person,
            size: 80,
            color: Colors.grey[400],
          ),
        ),
        Positioned(
          right: 0,
          top: 10,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.edit,
              color: GeekColors.kPrimaryAccentColor,
            ),
          ),
        )
      ],
    );
  }
}
