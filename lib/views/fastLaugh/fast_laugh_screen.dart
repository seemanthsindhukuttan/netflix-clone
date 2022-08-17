import 'package:flutter/material.dart';
import '../fastLaugh/widgets/fast_laugh_tile.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          padEnds: false,
          scrollDirection: Axis.vertical,
          children: List.generate(
            20,
            (index) => FastLaughtTile(index: index),
          ),
        ),
      ),
    );
  }
}
