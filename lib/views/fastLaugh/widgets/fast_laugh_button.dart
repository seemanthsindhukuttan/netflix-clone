import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';

class FastLaughButton extends StatelessWidget {
  const FastLaughButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onpressed,
    this.textColor = kColorWhite,
    this.size,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onpressed;
  final double? size;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent,
            ),
          ),
          onPressed: onpressed,
          child: Column(
            children: [
              Icon(
                icon,
                color: kColorWhite.withOpacity(0.9),
                size: size,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
