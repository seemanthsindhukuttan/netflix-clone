import 'package:flutter/material.dart';
import 'package:netflix/views/search/search_idel_screen.dart';
import 'search_result_screen.dart';
import 'widgets/search_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchBarWidget(),
            // Expanded(
            //   child: SearchIdelWidget(),
            // ),
            Expanded(
              child: SearchResultWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
