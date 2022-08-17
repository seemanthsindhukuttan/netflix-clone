import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import 'fast_laugh_button.dart';

class FastLaughtTile extends StatelessWidget {
  const FastLaughtTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: deviceHeight,
          width: deviceWidth,
          color: Colors.accents[index % Colors.accents.length],
        ),

        Positioned(
          top: 20,
          left: 20,
          child: Text(
            'LUDO',
            textAlign: TextAlign.center,
            style: GoogleFonts.titanOne(
              color: kColorWhite,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //mute buttom botton ===start.
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.6),
              radius: 20,
              child: IconButton(
                onPressed: () {
                  //Todo: mute button.
                },
                icon: const FaIcon(
                  FontAwesomeIcons.volumeXmark,
                  color: kColorWhite,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        //mute buttom botton ===end.
        //
        // right side widgets ===start.
        Positioned(
          top: deviceHeight / 2.2,
          right: deviceWidth / 20,
          child: Column(
            children: [
              Stack(
                textDirection: TextDirection.rtl,
                children: [
                  SizedBox(
                    height: deviceHeight / 10,
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1658544088614-5f96b968cd5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 2,
                    child: Text(
                      'LUDO',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.titanOne(
                        color: kColorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: deviceHeight / 80),
              FastLaughButton(
                title: 'LOL',
                icon: FontAwesomeIcons.solidFaceLaughBeam,
                onpressed: () {},
              ),
              SizedBox(height: deviceHeight / 60),
              FastLaughButton(
                title: 'My List',
                icon: FontAwesomeIcons.plus,
                onpressed: () {},
              ),
              SizedBox(height: deviceHeight / 60),
              FastLaughButton(
                title: 'Share',
                icon: FontAwesomeIcons.paperPlane,
                onpressed: () {},
              ),
              SizedBox(height: deviceHeight / 60),
              FastLaughButton(
                title: 'Play',
                icon: FontAwesomeIcons.play,
                onpressed: () {},
              ),
              // right side widgets ===end.
            ],
          ),
        ),
      ],
    );
  }
}
