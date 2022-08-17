import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/models/popular_movies/popular_movies_model.dart';
import '../../core/colors/colors.dart';
import '../core/url/url.dart';

class PopularMoviesDataServices {
  Future<PopularMoviesModel?> getPopularMoviedata() async {
    try {
      final response = await http.get(Uri.parse(ApiUrls.popularMovieUrl));
      log('========${response.statusCode}==========');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedData = jsonDecode(response.body);
        return PopularMoviesModel.fromJson(decodedData);
      } else if (response.statusCode != 200 || response.statusCode != 201) {
        Get.snackbar(
          'Network Error',
          'Check Internet Connection',
          snackPosition: SnackPosition.TOP,
          backgroundColor: kColorWhite,
        );
      }
    } catch (e) {
      Get.snackbar(
        'App Error',
        'check app update',
        snackPosition: SnackPosition.TOP,
        backgroundColor: kColorWhite,
      );
    }
    return null;
  }
}
