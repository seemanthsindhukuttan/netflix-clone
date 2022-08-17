import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/home/home_controller.dart';
import '../../core/colors/colors.dart';
import '../../services/core/url/url.dart';
import '../widgets/title_widget.dart';

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitleWidget(title: 'Top Searches'),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: deviceHeight / 60);
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    height: deviceHeight / 12,
                    width: deviceWidth / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "${ApiUrls.kimageBaseUrl}${Get.find<HomeController>().trendingData!()?.results[1].posterPath}",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: deviceWidth / 40),
                  Expanded(
                    child: Text(
                      'Ms. Marvel',
                      style: GoogleFonts.montserrat(
                        color: kColorWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    splashRadius: 30,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_outline,
                      color: kColorWhite,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
