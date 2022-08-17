import 'package:flutter/material.dart';
import '../../widgets/title_widget.dart';

class TopShowCard extends StatelessWidget {
  const TopShowCard({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitleWidget(title: 'Top 10TV Shows in India Today'),
        LimitedBox(
          maxHeight: deviceHeight / 5,
          child: ListView(
              scrollDirection: Axis.horizontal,
              //shrinkWrap: true,
              children: children),
        ),
      ],
    );
  }
}
