import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:approachable_geek_challenge/src/common/constants/colors.dart';

class GeeksInputTextField extends StatelessWidget {
  const GeeksInputTextField({
    super.key,
    this.label,
    this.hint,
    this.maxLines,
    this.textEditingController,
    this.textInputType,
    this.textInputFormatters,
  });

  final String? label;
  final String? hint;
  final int? maxLines;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      cursorColor: GeekColors.kGreyedColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: GeekColors.kGreyedColor,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        hintStyle: const TextStyle(
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
      textInputAction: TextInputAction.done,
      keyboardType: textInputType,
      inputFormatters: textInputFormatters,
    );
  }
}
