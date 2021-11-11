import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter TikTok',
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Decouvrir',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/tiktok_add.png',height: 25,),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Boite de reception',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Moi',
          )
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF141518),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
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
class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;


  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
  void initState(){
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:100,
          padding: const EdgeInsets.only(top:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Abonnements', style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(width: 20),
              Text('Pour toi', style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      //color: Colors.red.withOpacity(0.5),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '@delnasa_3',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '#belleJournee',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),



                        ],
                      ),
                    )),
                Container(
                  width: 80,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 80,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 80,
                        color: Colors.teal,
                      ),
                      Container(
                        height: 80,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 80,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 80,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                )
              ],
            ),
        )
      ],
    );
  }
}



