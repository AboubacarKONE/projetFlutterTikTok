import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class Conteneur extends StatelessWidget {
   Conteneur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Container(
          height:100,
          padding: EdgeInsets.only(top:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    padding:  EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
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
                        Row(
                          children:  [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Salif_keita_Mofou',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                width: 80,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 80,
                      //color: Colors.blue,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                                radius:30,
                                backgroundImage: AssetImage('assets/images/Abou.jpeg'),
                          ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      //color: Colors.teal,
                      child:Column(
                        children:[
                          Icon(
                            Icons.favorite,
                            color:Colors.white.withOpacity(0.85),
                            size:45,
                          ),
                        const Text(
                            '980.8K',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                        ),
                        ]
                      )
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          const Text(
                            '789',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      //color: Colors.orange
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          const Text(
                            '897',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const AnimatedLogo(),
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
class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}
class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}
