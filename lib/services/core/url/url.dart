import 'package:netflix/keys/api_key.dart';

class ApiUrls {
  static const kBaseUrl = "https://api.themoviedb.org/3";
  static const kimageBaseUrl = "https://image.tmdb.org/t/p/w500";
  static const trendingMovieUrl = "$kBaseUrl/trending/all/day?api_key=$API_KEY";
  static const topRatedMoiveUrl =
      "$kBaseUrl/movie/top_rated?api_key=$API_KEY&language=en-US";
  static const tvShowUrl =
      "$kBaseUrl/tv/popular?api_key=$API_KEY&language=en-US&page=1";
  static const popularMovieUrl =
      "$kBaseUrl/movie/popular?api_key=$API_KEY&language=en-US";
}
