import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tiktok/Conteneur.dart';
import 'package:flutter_tiktok/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final List<Map> items = const [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
    {
      "video": "assets/videos/video_6.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items:items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [VideoWidget(videoUrl: item['video']),
                  const  PostContent()
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}