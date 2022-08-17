import 'dart:convert';
import 'package:get/get.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:http/http.dart ' as http;
import 'package:netflix/services/core/url/url.dart';
import '../../models/trending_movies/trending_model.dart';

class TrendingDataService {
  Future<TrendingModel?> getTrendingData() async {
    try {
      final response = await http.get(Uri.parse(ApiUrls.trendingMovieUrl));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedData = jsonDecode(response.body);
        return TrendingModel.fromJson(decodedData);
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
