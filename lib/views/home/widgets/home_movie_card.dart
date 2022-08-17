import 'package:flutter/material.dart';
import '../../widgets/title_widget.dart';

class HomeMovieCard extends StatelessWidget {
  const HomeMovieCard({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleWidget(title: title),
        LimitedBox(
          maxHeight: deviceHeight / 5,
          child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: children),
        ),
      ],
    );
  }
}
