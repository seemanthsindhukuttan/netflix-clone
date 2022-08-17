import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:netflix/models/top_rated_movies/home_top_rated_model.dart';
import 'package:netflix/services/core/url/url.dart';
import 'package:http/http.dart ' as http;
import '../../core/colors/colors.dart';

class TopRatedDataServices {
  Future<HomeTopRatedModel?> getTopRateddata() async {
    try {
      final response = await http.get(Uri.parse(ApiUrls.topRatedMoiveUrl));
      log('========${response.statusCode}==========');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedData = jsonDecode(response.body);
        return HomeTopRatedModel.fromJson(decodedData);
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
