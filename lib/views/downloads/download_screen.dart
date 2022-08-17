import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controllers/home/home_controller.dart';
import 'package:netflix/core/colors/colors.dart';
import '../../services/core/url/url.dart';
import '../widgets/app_bar_widgets.dart';
import 'widgets/material_button_widgets.dart';
import 'widgets/top_download_image_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final data = Get.put(HomeController());
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   data.getTrendingData();
    // });

    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(deviceWidth, deviceHeight / 20),
        child: const AppBarWidgets(title: 'Downloads'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: deviceWidth / 30),
              const FaIcon(
                FontAwesomeIcons.gear,
                color: kColorWhite,
              ),
              SizedBox(width: deviceWidth / 30),
              Text(
                'Smart Downloads',
                style: GoogleFonts.montserrat(
                  color: kColorWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: deviceHeight / 20),
          Text(
            'Introducing Downlods for you',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: kColorWhite,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: deviceHeight / 40),
          Text(
            'We\'ll download a personalised selection of\n movies and shows for you, so there\'s\n always somthing to watch on your\n device.',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: kColorGrey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: deviceWidth,
            width: deviceWidth,
            child: Get.find<HomeController>().trendingMovieIsLoading.isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        radius: deviceWidth * 0.40,
                        backgroundColor: kColorGrey.withOpacity(0.6),
                      ),
                      TopDownloadImageWidget(
                        margin: EdgeInsets.only(right: deviceWidth / 2),
                        angle: -25 * pi / 250,
                        imgLink:
                            "${ApiUrls.kimageBaseUrl}${Get.find<HomeController>().trendingData!()?.results[1].posterPath}",
                        width: deviceWidth * 0.40,
                        height: deviceHeight / 4,
                      ),
                      TopDownloadImageWidget(
                        margin: EdgeInsets.only(left: deviceWidth / 2),
                        width: deviceWidth * 0.40,
                        height: deviceHeight / 4,
                        angle: 25 * pi / 250,
                        imgLink:
                            "${ApiUrls.kimageBaseUrl}${Get.find<HomeController>().trendingData!()?.results[0].posterPath}",
                      ),
                      TopDownloadImageWidget(
                        width: deviceWidth * 0.40,
                        height: deviceHeight / 3.5,
                        margin: EdgeInsets.only(top: deviceHeight / 40),
                        imgLink:
                            "${ApiUrls.kimageBaseUrl}${Get.find<HomeController>().trendingData!()?.results[2].posterPath}",
                      ),
                    ],
                  ),
          ),
          MaterialButtonWidget(
            labelColor: kColorWhite,
            buttonColor: kColorBlue,
            edgeInsets: EdgeInsets.only(
              left: deviceWidth / 40,
              right: deviceWidth / 40,
              //top: deviceHeight / 80,
            ),
            label: 'Set up',
            onPressed: () {},
          ),
          MaterialButtonWidget(
            buttonColor: kColorWhite,
            edgeInsets: EdgeInsets.only(
              left: deviceWidth / 20,
              right: deviceWidth / 20,
              top: deviceHeight / 80,
            ),
            label: 'See What You can Download',
            onPressed: () {},
            labelColor: kColorBlack,
          ),
        ],
      ),
    );
  }
}
