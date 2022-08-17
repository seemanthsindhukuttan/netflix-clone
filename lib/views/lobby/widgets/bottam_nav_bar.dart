import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigatioBarWidget extends StatelessWidget {
  const BottomNavigatioBarWidget({Key? key}) : super(key: key);
  static ValueNotifier<int> changeIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: changeIndexNotifier,
      builder: (BuildContext context, int newIndex, Widget? child) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            changeIndexNotifier.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'Coming Soon',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.faceSmile),
              label: 'Laughs',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleArrowDown),
              label: 'Dowloads',
            ),
          ],
        );
      },
    );
  }
}
