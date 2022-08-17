import 'package:get/get.dart';
import 'package:netflix/models/popular_movies/popular_movies_model.dart';
import 'package:netflix/models/top_rated_movies/home_top_rated_model.dart';
import 'package:netflix/models/trending_movies/trending_model.dart';
import 'package:netflix/models/tv_show/tv_show_model.dart';
import 'package:netflix/services/home/popular_movies_data_service.dart';
import 'package:netflix/services/home/top_rated_data_service.dart';
import 'package:netflix/services/home/tv_shows_data_service.dart';
import '../../services/home/trending_data_service.dart';

class HomeController extends GetxController {
  Rx<HomeTopRatedModel?>? topRatedData = HomeTopRatedModel().obs;
  Rx<TrendingModel?>? trendingData = TrendingModel().obs;
  Rx<TvShowModel?>? tvShowData = TvShowModel().obs;
  Rx<PopularMoviesModel?>? popularMoviesData = PopularMoviesModel().obs;

  RxBool popularMoiveIsLoading = true.obs;
  RxBool topRatedMoiveIsLoading = true.obs;
  RxBool trendingMovieIsLoading = true.obs;
  RxBool tvShowisLoading = true.obs;
  @override
  void onInit() {
    getTopRatedData();
    getTrendingData();
    getTvShowData();
    getPopularMoviedData();
    super.onInit();
  }

  void getPopularMoviedData() async {
    final data = await PopularMoviesDataServices().getPopularMoviedata();
    if (data?.results != null) {
      popularMoviesData?.value = data;
      popularMoiveIsLoading.value = false;
    }
  }

  void getTopRatedData() async {
    final data = await TopRatedDataServices().getTopRateddata();
    if (data?.results != null) {
      topRatedData?.value = data;
      topRatedMoiveIsLoading.value = false;
    }
  }

  void getTrendingData() async {
    final data = await TrendingDataService().getTrendingData();
    if (data?.results != null) {
      trendingData?.value = data;
      trendingMovieIsLoading.value = false;
    }
  }

  void getTvShowData() async {
    final data = await TvShowDataService().getTvShowData();
    if (data?.results != null) {
      tvShowData?.value = data;
      tvShowisLoading.value = false;
    }
  }
}
