import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget(
      {Key? key,
      required this.edgeInsets,
      required this.label,
      required this.onPressed,
      required this.buttonColor,
      required this.labelColor,
      this.width = double.infinity})
      : super(key: key);
  final EdgeInsets edgeInsets;
  final VoidCallback onPressed;
  final String label;
  final Color buttonColor;
  final Color labelColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: edgeInsets,
      child: MaterialButton(
        height: deviceHeight / 20,
        minWidth: width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        color: buttonColor,
        onPressed: onPressed,
        child: Text(
          label,
          style: GoogleFonts.montserrat(
            color: labelColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
