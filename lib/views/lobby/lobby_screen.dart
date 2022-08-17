import 'package:flutter/material.dart';
import '../comingsoon/coming_soon.dart';
import '../downloads/download_screen.dart';
import '../fastLaugh/fast_laugh_screen.dart';
import '../home/home_screen.dart';
import '../search/search_screen.dart';
import 'widgets/bottam_nav_bar.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      CommingSoonScreen(),
      FastLaughScreen(),
      SearchScreen(),
      DownloadScreen(),
    ];
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: BottomNavigatioBarWidget.changeIndexNotifier,
          builder: (BuildContext context, int updateScreens, Widget? child) {
            return screens[updateScreens];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigatioBarWidget(),
    );
  }
}
