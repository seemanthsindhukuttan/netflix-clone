import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/models/tv_show/tv_show_model.dart';
import '../../core/colors/colors.dart';
import '../core/url/url.dart';

class TvShowDataService {
  Future<TvShowModel?> getTvShowData() async {
    try {
      final response = await http.get(Uri.parse(ApiUrls.tvShowUrl));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedData = jsonDecode(response.body);
        return TvShowModel.fromJson(decodedData);
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
