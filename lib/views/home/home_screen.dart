import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:netflix/controllers/home/home_controller.dart';
import 'package:netflix/views/home/widgets/image_card.dart';
import 'package:netflix/views/home/widgets/top_show_img_card.dart';

import '../../services/core/url/url.dart';
import '../home/widgets/home_movie_card.dart';
import '../home/widgets/top_show_widget.dart';
import 'widgets/home_header.dart';
import 'widgets/home_screen_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;
    HomeController data = Get.put(HomeController());

    final ScrollController controller = ScrollController();
    final ValueNotifier<bool> hideAppBar = ValueNotifier(false);
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        hideAppBar.value = true;
      } else {
        hideAppBar.value = false;
      }
    });

    return Obx(
      () => data.trendingMovieIsLoading.isTrue ||
              data.tvShowisLoading.isTrue ||
              data.topRatedMoiveIsLoading.isTrue ||
              data.popularMoiveIsLoading.isTrue
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      HomeHeader(
                        imgLink:
                            "${ApiUrls.kimageBaseUrl}${data.popularMoviesData!()?.results[0].posterPath}",
                      ),
                      HomeMovieCard(
                        title: 'Trending New',
                        children: List.generate(
                          data.trendingData!()!.results.length,
                          (index) => MovieImageCard(
                            imgUrl:
                                "${ApiUrls.kimageBaseUrl}${data.trendingData!()?.results[index].posterPath}",
                          ),
                        ),
                      ),
                      HomeMovieCard(
                        title: 'Popular Movies',
                        children: List.generate(
                          data.topRatedData!()!.results.length,
                          (index) => MovieImageCard(
                            imgUrl:
                                "${ApiUrls.kimageBaseUrl}${data.popularMoviesData!()?.results[index].posterPath}",
                          ),
                        ),
                      ),
                      TopShowCard(
                        children: List.generate(
                          10,
                          (index) => TopShowImageCard(
                            index: index,
                            imgUrl:
                                "${ApiUrls.kimageBaseUrl}${data.tvShowData!()?.results[index].posterPath}",
                          ),
                        ),
                      ),
                      HomeMovieCard(
                        title: 'Released in the Past Year',
                        children: List.generate(
                          data.topRatedData!()!.results.length,
                          (index) => MovieImageCard(
                            imgUrl:
                                "${ApiUrls.kimageBaseUrl}${data.topRatedData!()?.results[index].posterPath}",
                          ),
                        ),
                      ),
                      HomeMovieCard(
                        title: 'South Indian Cinema',
                        children: List.generate(
                          data.topRatedData!()!.results.length,
                          (index) => MovieImageCard(
                            imgUrl:
                                "${ApiUrls.kimageBaseUrl}${data.topRatedData!()?.results[index].posterPath}",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                HomeScreenAppBar(hideAppBar: hideAppBar),
              ],
            ),
    );
  }
}
