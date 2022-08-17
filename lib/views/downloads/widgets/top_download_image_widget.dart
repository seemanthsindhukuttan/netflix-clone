import 'package:flutter/material.dart';

class TopDownloadImageWidget extends StatelessWidget {
  const TopDownloadImageWidget({
    Key? key,
    required this.imgLink,
    required this.width,
    required this.height, //3.5'
    this.angle = 0,
    this.margin,
  }) : super(key: key);

  final double angle;
  final String imgLink;
  final double height;
  final double width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imgLink,
            ),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
