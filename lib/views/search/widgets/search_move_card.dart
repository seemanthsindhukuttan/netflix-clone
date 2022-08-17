import 'package:flutter/cupertino.dart';

class SearchMovieCardWidget extends StatelessWidget {
  const SearchMovieCardWidget({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imgUrl),
        ),
      ),
    );
  }
}
