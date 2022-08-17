import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home/home_controller.dart';
import '../../services/core/url/url.dart';
import '../widgets/title_widget.dart';
import 'widgets/search_move_card.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitleWidget(title: 'Movies & TV'),
        Expanded(
          child: GridView.count(
            crossAxisSpacing: deviceWidth / 60,
            mainAxisSpacing: deviceHeight / 60,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              Get.find<HomeController>().trendingData!()!.results.length,
              (index) => SearchMovieCardWidget(
                imgUrl:
                    "${ApiUrls.kimageBaseUrl}${Get.find<HomeController>().trendingData!()?.results[index].posterPath}",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
