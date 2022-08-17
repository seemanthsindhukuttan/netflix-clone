import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
    required this.hideAppBar,
  }) : super(key: key);

  final ValueNotifier<bool> hideAppBar;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return ValueListenableBuilder(
      valueListenable: hideAppBar,
      builder: (BuildContext context, bool value, Widget? _) {
        return AnimatedContainer(
          height: value == false ? deviceHeight / 8.8 : 0,
          duration: const Duration(milliseconds: 300),
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                //backgroundBlendMode: BlendMode.difference,

                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.decal,
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
              ),
              height: deviceHeight / 8.8,
              width: deviceWidth,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight / 100,
                        left: deviceWidth / 60,
                        right: deviceWidth / 60),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/netflix_Logo.png',
                          height: 40,
                          width: 20,
                          fit: BoxFit.fill,
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
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'TV Shows',
                          style: GoogleFonts.montserrat(
                            color: kColorWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Movies',
                          style: GoogleFonts.montserrat(
                            color: kColorWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              'Categories',
                              style: GoogleFonts.montserrat(
                                color: kColorWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                              color: kColorWhite,
                            )
                          ],
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            onTap: () {},
                            child: const Text('Child one'),
                          ),
                          PopupMenuItem(
                            value: 1,
                            onTap: () {},
                            child: const Text('Child two'),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
