import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: TextField(
          style: const TextStyle(color: kColorWhite, fontSize: 20),
          cursorColor: kColorWhite,
          decoration: InputDecoration(
            filled: true,
            fillColor: kColorGrey.withOpacity(0.6),
            prefixIcon: Icon(
              Icons.search,
              color: kColorGrey.shade400,
            ),
            suffixIcon: IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: Icon(
                Icons.close_rounded,
                color: kColorGrey.shade400,
              ),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(color: kColorGrey.shade400),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
