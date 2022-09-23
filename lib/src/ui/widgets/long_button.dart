import 'package:approachable_geek_challenge/src/common/extensions/app_localization_context.dart';
import 'package:flutter/material.dart';

class GeeksLongButton extends StatelessWidget {
  const GeeksLongButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  final String label;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed?.call(),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        backgroundColor: Colors.black,
        fixedSize: const Size(340, 60),
      ),
      child: Text(
        context.loc.update,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
