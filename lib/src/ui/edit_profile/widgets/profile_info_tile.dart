import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfoTile extends StatelessWidget {
  const ProfileInfoTile({
    super.key,
    required this.label,
    required this.description,
    this.onTap,
  });

  final String label;
  final String description;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => onTap?.call(),
          title: Text(
            label,
            style: const TextStyle(
              color: GeekColors.kGreyedColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 8),
          trailing: const Icon(Icons.chevron_right_outlined,
              size: 40, color: GeekColors.kGreyedColor),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
