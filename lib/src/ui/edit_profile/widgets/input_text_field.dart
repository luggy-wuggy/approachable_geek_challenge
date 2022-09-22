import 'package:approachable_geek_challenge/src/common/constants/colors.dart';
import 'package:flutter/material.dart';

class GeeksInputTextField extends StatelessWidget {
  const GeeksInputTextField({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        cursorColor: GeekColors.kGreyedColor,
        decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: const TextStyle(
            color: GeekColors.kGreyedColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(
              color: Color.fromRGBO(229, 229, 229, 1),
              width: 1.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(
              color: GeekColors.kGreyedColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
