// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color textcolor;
  final Color color;
  final double borderradius;
  final double fontsize;
  final FontWeight fontWeight;

  final VoidCallback onPressed;

  const MyButton({
    super.key,
    this.height = 20,
    this.width = 100,
    this.text = "",
    required this.onPressed,
    this.color = const Color(0xFF3A59A8),
    this.textcolor = const Color(0xFFcfcfe5),
    this.borderradius = 8,
    this.fontWeight = FontWeight.w600,
    this.fontsize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderradius)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
          fontSize: fontsize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
