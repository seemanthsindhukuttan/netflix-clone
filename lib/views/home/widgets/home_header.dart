import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../fastLaugh/widgets/fast_laugh_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key, required this.imgLink}) : super(key: key);
  final String imgLink;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Container(
            width: deviceWidth,
            height: deviceHeight / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imgLink,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            decoration: const BoxDecoration(
              //backgroundBlendMode: BlendMode.difference,

              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.decal,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FastLaughButton(
                  title: 'My List',
                  icon: FontAwesomeIcons.plus,
                  onpressed: () {},
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: kColorWhite),
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.play,
                    color: kColorBlack,
                  ),
                  label: Text(
                    'Play',
                    style: GoogleFonts.montserrat(
                      color: kColorBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FastLaughButton(
                  title: 'Info',
                  icon: FontAwesomeIcons.circleInfo,
                  onpressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
