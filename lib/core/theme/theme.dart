import 'package:flutter/material.dart';
import '../colors/colors.dart';

class NetflixTheme {
  ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: const AppBarTheme(color: kColorBlack),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kColorWhite),
      bodyText2: TextStyle(color: kColorWhite),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kBackgroundColor,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: kColorGrey,
      selectedItemColor: kColorWhite,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        height: 2.5,
      ),
    ),
  );
}
