import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/presentation/utils/colors/colors.dart';

class TabWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const TabWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 37,
        ),
        Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: kBlack,
          ),
        )
      ],
    );
  }
}
