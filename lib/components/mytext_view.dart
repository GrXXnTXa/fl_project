// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextView extends StatelessWidget {
  final String prefixText;
  final String labelText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final inputType;
  final maxLenght;
  final maxLines;

  const MyTextView({
    super.key,
    this.prefixText = "",
    required this.labelText,
    required this.inputType,
    required this.maxLenght,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      maxLength: maxLenght,
      maxLines: maxLines,
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        counterText: "",
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0x00000fff)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0x00000fff)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: prefixIcon,
        labelText: labelText,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        alignLabelWithHint: true,
        labelStyle: const TextStyle(
          color: Color(0xFFBABABA),
        ),
      ),
    );
  }
}
