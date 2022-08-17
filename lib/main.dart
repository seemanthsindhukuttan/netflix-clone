import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/core/theme/theme.dart';
import 'views/lobby/lobby_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NetFlix',
      theme: NetflixTheme().themeData,
      home: const LobbyScreen(),
    ),
  );
}
