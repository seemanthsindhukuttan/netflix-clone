import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';

class TopShowImageCard extends StatelessWidget {
  const TopShowImageCard({Key? key, required this.imgUrl, required this.index})
      : super(key: key);
  final String imgUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            left: 30,
          ),
          child: Container(
            width: deviceWidth / 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imgUrl),
              ),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: -5,
          child: Text(
            "${index + 1}",
            style: GoogleFonts.roboto(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = kColorWhite,
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: -5,
          child: Text(
            "${index + 1}",
            style: GoogleFonts.roboto(
              color: kColorBlack,
              fontSize: 120,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
