import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../../core/colors/colors.dart';
import '../fastLaugh/widgets/fast_laugh_button.dart';
import '../widgets/app_bar_widgets.dart';

class CommingSoonScreen extends StatefulWidget {
  const CommingSoonScreen({Key? key}) : super(key: key);

  @override
  State<CommingSoonScreen> createState() => _CommingSoonScreenState();
}

class _CommingSoonScreenState extends State<CommingSoonScreen> {
  var link = [
    "https://movietrailers.apple.com/movies/independent/the-moderator/the-moderator-trailer-1_h480p.mov",
    "https://movietrailers.apple.com/movies/ifc_films/spin-me-round/spin-me-round-trailer-1_h480p.mov",
    "https://movietrailers.apple.com/movies/independent/the-moderator/the-moderator-trailer-1_h480p.mov",
  ];

  late final VideoPlayerController _controller =
      VideoPlayerController.network(link[0]);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: AppBarWidgets(
            title: 'Coming Soon',
          ),
        ),
        body: ListView(
          children: List.generate(
            link.length,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: deviceHeight / 2,
                width: deviceWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: deviceWidth,
                            height: deviceHeight / 5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    'https://w.ifushaar.com/wp-content/uploads/2022/07/The-Moderator-2022.jpg'),
                              ),
                            ),
                            child: _controller.value.isPlaying
                                ? FutureBuilder(
                                    future: _controller.initialize(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        return AspectRatio(
                                          aspectRatio:
                                              _controller.value.aspectRatio,
                                          child: VideoPlayer(_controller),
                                        );
                                      } else {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                    },
                                  )
                                : const SizedBox(),
                          ),
                          _controller.value.isPlaying
                              ? const SizedBox()
                              : const Positioned(
                                  top: 50,
                                  left: 50,
                                  right: 50,
                                  bottom: 50,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: kColorWhite,
                                    size: 60,
                                  ),
                                )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'TALLGIRL2',
                            style: GoogleFonts.piedra(
                              color: kColorWhite,
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -2,
                            ),
                          ),
                          const Spacer(),
                          FastLaughButton(
                            title: 'RemindMe',
                            icon: FontAwesomeIcons.bell,
                            size: 18,
                            onpressed: () {},
                          ),
                          FastLaughButton(
                            title: 'Info',
                            icon: FontAwesomeIcons.circleInfo,
                            size: 18,
                            onpressed: () {},
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Coming on Firday',
                      style: TextStyle(
                        fontSize: 16,
                        color: kColorGrey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/netflix_Logo.png',
                            height: 20,
                            width: 10,
                          ),
                          const Text(
                            'FLIM',
                            style: TextStyle(
                              fontSize: 12,
                              color: kColorGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Tall Girl 2',
                      style: GoogleFonts.montserrat(
                        color: kColorWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Landing the lead in the school muscial is a dream come true for Jodi,until the pressure sends her considance-and her relationship- into a failspin.',
                        style: GoogleFonts.montserrat(
                          color: kColorGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
