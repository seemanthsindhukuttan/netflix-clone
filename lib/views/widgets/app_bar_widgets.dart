import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({Key? key, required this.title, this.bottom})
      : super(key: key);
  final String title;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          padding: const EdgeInsets.all(0),
          splashRadius: 22,
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            color: kColorWhite,
            size: 30,
          ),
        ),
        const CircleAvatar(
          radius: 22,
        ),
        const SizedBox(width: 15)
      ],
    );
  }
}
