import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final Color textColor;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  const TextWidget({
    super.key, required this.textColor, required this.text, required this.fontWeight, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize),
    );
  }
}
